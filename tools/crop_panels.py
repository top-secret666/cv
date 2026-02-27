from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from PIL import Image


@dataclass(frozen=True)
class Box:
    left: float
    top: float
    right: float
    bottom: float

    def to_pixels(self, width: int, height: int) -> tuple[int, int, int, int]:
        def clamp(v: int, lo: int, hi: int) -> int:
            return max(lo, min(hi, v))

        l = clamp(int(self.left * width), 0, width)
        t = clamp(int(self.top * height), 0, height)
        r = clamp(int(self.right * width), 0, width)
        b = clamp(int(self.bottom * height), 0, height)
        if r <= l or b <= t:
            raise ValueError(f"Invalid crop box after conversion: {(l, t, r, b)}")
        return (l, t, r, b)


# Ratios tuned for this specific HUD poster layout.
# If you want tighter/looser crops, tweak these values.
CROPS: dict[str, Box] = {
    # Middle panel in the 3-panel row
    "skill_tree": Box(left=0.345, top=0.525, right=0.655, bottom=0.735),
    # Bottom-left panel
    "quest_log": Box(left=0.03, top=0.735, right=0.34, bottom=0.935),
}


def main() -> None:
    repo_root = Path(__file__).resolve().parents[1]

    # Prefer the local poster export if present
    default_input = repo_root / "7c0866b3-a170-4382-b49f-ba41ee18753e.png"
    input_path = default_input if default_input.exists() else None

    if input_path is None:
        raise SystemExit(
            "Input image not found. Put your poster PNG into repo root or update input_path in tools/crop_panels.py"
        )

    out_dir = repo_root / "assets" / "panels"
    out_dir.mkdir(parents=True, exist_ok=True)

    with Image.open(input_path) as img:
        img = img.convert("RGBA")
        width, height = img.size
        print(f"Input: {input_path.name} ({width}x{height})")

        for name, box in CROPS.items():
            px = box.to_pixels(width, height)
            cropped = img.crop(px)
            out_path = out_dir / f"{name}.png"
            cropped.save(out_path)
            print(f"Wrote: {out_path.relative_to(repo_root)}  crop={px}  size={cropped.size[0]}x{cropped.size[1]}")


if __name__ == "__main__":
    main()
