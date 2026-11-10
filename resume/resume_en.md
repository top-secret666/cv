# Dana Stukalova

**Junior Java Backend Developer · Unity (C#) Game Developer**
Open to internships and junior roles · Vitebsk, Belarus

📧 [stukalovadana20@gmail.com](mailto:stukalovadana20@gmail.com) · 📞 [+375 29 271 09 32](tel:+375292710932) · 💻 [github.com/top-secret666](https://github.com/top-secret666) · 🌐 CV: [EN](https://top-secret666.github.io/cv/) / [RU](https://top-secret666.github.io/cv/ru.html)

---

## Summary

Software engineering student at Vitebsk State Technological University focused on Java backend development. I build REST services with Spring Boot 3: microservices, JWT / OAuth2 security with Keycloak, Kafka messaging, PostgreSQL with Liquibase migrations, and Docker Compose environments. I have shipped a full-stack food delivery platform with a live demo, and I also build games: four Unity 6 (URP) projects in C# and a Java game with a public Windows release. Looking for an internship or junior role where I can grow on real tasks within a team.

## Skills

- **Backend:** Java 17, Spring Boot 3, Spring Web, Spring Security (OAuth2 Resource Server, JWT), Spring Data JPA, Bean Validation, Spring Kafka, Resilience4j, MapStruct, Lombok
- **APIs & architecture:** REST, microservices, OpenAPI / Swagger, Spring Boot Actuator, OOP, SOLID basics
- **Security:** Keycloak (SSO, roles, email verification), Google Sign-In, role-based access control
- **Databases:** PostgreSQL, MySQL, H2, SQL, Liquibase
- **Tools & DevOps:** Git, GitHub, GitHub Actions, Maven, Docker, Docker Compose, Testcontainers
- **Frontend (basic):** React, Redux Toolkit, Next.js, TypeScript / JavaScript, Tailwind CSS
- **Game dev:** Unity 6, URP, C#, Prefabs and prefab variants, ScriptableObjects, New Input System, ProBuilder, Splines, post-processing, editor tooling
- **Also used:** C++ (SFML), Python (TensorFlow / Keras)

## Backend Projects

### Aroma Food Delivery Platform
**Java 17 · Spring Boot 3.5 · Spring Security · Kafka · Keycloak · PostgreSQL · Liquibase · Docker Compose · React**
[Backend](https://github.com/top-secret666/food) · [Frontend](https://github.com/top-secret666/aroma-food) · [Live demo](https://aromafood.vercel.app)
- Built three Spring Boot microservices (user, restaurant, order), each with its own database, Liquibase migrations and Swagger docs; orders move through a full status lifecycle from `PENDING` to `COMPLETED`.
- Implemented authentication with JWT, Google Sign-In and Keycloak (OAuth2 Resource Server) with `USER` / `MANAGER` / `ADMIN` roles; services talk over HTTP and Apache Kafka.
- Set up two run modes, a lightweight local mode (H2 + local JWT) and a full Docker Compose stack (PostgreSQL, Kafka, Keycloak, Mailhog), plus integration tests with Testcontainers.
- Built the React + Redux client for customers, managers and admins, deployed on Vercel.

### Tournament Arena (study project)
**Java 17 · Spring Boot 3.5 · Spring Security · JPA · JWT · MySQL · Next.js 15 · TypeScript**
[GitHub](https://github.com/top-secret666/Game_tournament_management)
- Full-stack platform for managing League of Legends tournaments: a REST API with JWT authentication, a MySQL schema with seed data, and a Next.js 15 / React 19 interface.
- Tournament and player pages with search, status filters, statistics and a tournament creation form with a team picker.

## Game Development (Unity 6, URP, C#)

### WonderDoor
[GitHub](https://github.com/top-secret666/WonderDoor) · Unity 6, URP, C#, ProBuilder, Splines
- Surreal first-person walk through giant corridors of coloured doors, a circular arc hall and a sunlit meadow room.
- Prefab / prefab-variant room hierarchy, interactable doors that swing on their hinge edge, a procedurally generated meadow, layer-limited window sunlight, and post-processing configured from code.

### Backrooms Lab: Level 0
[GitHub](https://github.com/top-secret666/backrooms) · Unity 6, URP, C#, New Input System
- Atmospheric first-person slice of Backrooms Level 0 with flickering fluorescent lights and a broken flashlight.
- Rigidbody FPS controller tuned through ScriptableObjects, an event-based noise system (Observer pattern), per-lamp flicker via `MaterialPropertyBlock`, and editor tools that build the level.

### The Witcher: Moonlit Road
[GitHub](https://github.com/top-secret666/witcher) · Unity 6, URP, C#, pixel art
- Dark-fantasy pixel-art walk along a forest road that gradually reveals a moonlit castle.
- Walk-driven parallax rig, CPU-projected perspective road, a custom URP `ScriptableRendererFeature` for the retro look, and mood presets stored in ScriptableObjects.

### Witcher 02: Night Ride
[GitHub](https://github.com/top-secret666/witcher-02) · Unity 6, URP, C#, pixel art
- First-person night horse ride through fog and roadside pines towards a castle.
- Layered parallax, a perspective road with steering, walk / canter / gallop gaits with camera motion, and URP post-processing; adapts to any aspect ratio.

## Other Projects

- **[The Witcher: Chapter 1](https://github.com/top-secret666/the-witcher)** (Java 17, Swing). A pixel-art horror visual novel on my own small engine with an MVP architecture (View → Presenter → Director → Domain). Released as a Windows build with a bundled Java runtime ([v1.1.0](https://github.com/top-secret666/the-witcher/releases)).
- **[Genomic Data Analysis](https://github.com/top-secret666/Analiz)** (Python, TensorFlow / Keras). **Winner of a scientific and technical conference.** Co-developed a 1D CNN that classifies pathogenic RB1 gene mutations, a cancer risk factor, using ClinVar data.
- **[Fireboy & Watergirl Multiplayer](https://github.com/top-secret666/fireboy-watergirl-multiplayer)** (C++17, SFML, TCP). Coursework: a co-op platformer with an authoritative server and a custom network protocol.
- **[PromptLock Defender](https://github.com/top-secret666/promptlock-defender)** (Python). Conference project: an antivirus that detects AI-powered ransomware with seven detection modules (signatures, AST analysis, entropy, ML classifier, process monitoring).

## Education

**Vitebsk State Technological University (VSTU)**, 2023 – 2027 (expected)
Faculty of Information Technologies and Robotics · Major: Information Technologies · Qualification: Software Engineer

## Languages

- **English:** B1 (Intermediate), actively improving spoken and technical English
- **Russian, Belarusian:** native

## Availability

Unpaid internship: yes · Full-time: yes · Office or hybrid
