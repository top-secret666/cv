# Стукалова Дана Андреевна

**Junior Java Backend Developer · Unity (C#) Game Developer**
Ищу стажировку или позицию Junior · Витебск, Беларусь

📧 [stukalovadana20@gmail.com](mailto:stukalovadana20@gmail.com) · 📞 [+375 29 271 09 32](tel:+375292710932) · 💻 [github.com/top-secret666](https://github.com/top-secret666) · 🌐 Резюме: [RU](https://top-secret666.github.io/cv/ru.html) / [EN](https://top-secret666.github.io/cv/)

---

## О себе

Студентка Витебского государственного технологического университета, специальность «Информационные технологии», направление — Java Backend. Разрабатываю REST-сервисы на Spring Boot 3: микросервисы, защита через JWT / OAuth2 и Keycloak, обмен сообщениями через Kafka, PostgreSQL с миграциями Liquibase, окружение на Docker Compose. Довела до рабочего состояния full-stack платформу доставки еды с живым демо. Кроме того, создаю игры: четыре проекта на Unity 6 (URP, C#) и игра на Java с публичным релизом под Windows. Ищу стажировку или Junior-позицию, чтобы расти на реальных задачах в команде.

## Навыки

- **Backend:** Java 17, Spring Boot 3, Spring Web, Spring Security (OAuth2 Resource Server, JWT), Spring Data JPA, Bean Validation, Spring Kafka, Resilience4j, MapStruct, Lombok
- **API и архитектура:** REST, микросервисы, OpenAPI / Swagger, Spring Boot Actuator, ООП, основы SOLID
- **Безопасность:** Keycloak (SSO, роли, подтверждение email), вход через Google, ролевая модель доступа
- **Базы данных:** PostgreSQL, MySQL, H2, SQL, Liquibase
- **Инструменты и DevOps:** Git, GitHub, GitHub Actions, Maven, Docker, Docker Compose, Testcontainers
- **Frontend (базово):** React, Redux Toolkit, Next.js, TypeScript / JavaScript, Tailwind CSS
- **Разработка игр:** Unity 6, URP, C#, Prefabs и prefab variants, ScriptableObjects, New Input System, ProBuilder, Splines, постобработка, инструменты редактора
- **Также работала с:** C++ (SFML), Python (TensorFlow / Keras)

## Backend-проекты

### Aroma — платформа доставки еды
**Java 17 · Spring Boot 3.5 · Spring Security · Kafka · Keycloak · PostgreSQL · Liquibase · Docker Compose · React**
[Backend](https://github.com/top-secret666/food) · [Frontend](https://github.com/top-secret666/aroma-food) · [Демо](https://aromafood.vercel.app)
- Разработала три микросервиса на Spring Boot (пользователи, рестораны, заказы), у каждого своя база данных, миграции Liquibase и документация Swagger; заказ проходит полный жизненный цикл статусов от `PENDING` до `COMPLETED`.
- Реализовала аутентификацию через JWT, вход через Google и Keycloak (OAuth2 Resource Server) с ролями `USER` / `MANAGER` / `ADMIN`; сервисы взаимодействуют по HTTP и через Apache Kafka.
- Настроила два режима запуска: лёгкий локальный (H2 + локальный JWT) и полный стек на Docker Compose (PostgreSQL, Kafka, Keycloak, Mailhog), а также интеграционные тесты на Testcontainers.
- Сделала клиент на React + Redux для покупателей, менеджеров и администраторов, развернула его на Vercel.

### Tournament Arena (учебный проект)
**Java 17 · Spring Boot 3.5 · Spring Security · JPA · JWT · MySQL · Next.js 15 · TypeScript**
[GitHub](https://github.com/top-secret666/Game_tournament_management)
- Full-stack платформа для управления турнирами по League of Legends: REST API с JWT-аутентификацией, схема MySQL с тестовыми данными и интерфейс на Next.js 15 / React 19.
- Страницы турниров и игроков с поиском, фильтром по статусу, статистикой и формой создания турнира с выбором команд.

## Разработка игр (Unity 6, URP, C#)

### WonderDoor
[GitHub](https://github.com/top-secret666/WonderDoor) · Unity 6, URP, C#, ProBuilder, Splines
- Сюрреалистичная прогулка от первого лица: огромные коридоры с цветными дверями, круглый зал и комната-луг, залитая солнцем.
- Иерархия комнат на префабах и prefab variants, интерактивные двери, которые открываются вокруг петель, процедурно генерируемый луг, солнечный свет из окон с ограничением по слоям рендеринга, постобработка, настраиваемая из кода.

### Backrooms Lab: Level 0
[GitHub](https://github.com/top-secret666/backrooms) · Unity 6, URP, C#, New Input System
- Атмосферный фрагмент Backrooms Level 0 от первого лица: мерцающие лампы дневного света и сломанный фонарик.
- FPS-контроллер на Rigidbody с настройками в ScriptableObjects, система шума на событиях (паттерн Observer), независимое мерцание каждой лампы через `MaterialPropertyBlock`, инструменты редактора для сборки уровня.

### The Witcher: Moonlit Road
[GitHub](https://github.com/top-secret666/witcher) · Unity 6, URP, C#, пиксель-арт
- Пиксель-арт в жанре dark fantasy: прогулка по лесной дороге, которая постепенно открывает вид на замок под луной.
- Параллакс-риг, управляемый ходьбой, перспективная дорога с проекцией на CPU, собственный `ScriptableRendererFeature` для URP (ретро-эффект), пресеты атмосферы в ScriptableObjects.

### Witcher 02: Night Ride
[GitHub](https://github.com/top-secret666/witcher-02) · Unity 6, URP, C#, пиксель-арт
- Ночная поездка верхом от первого лица: туман, придорожные сосны и замок впереди.
- Многослойный параллакс, перспективная дорога с поворотами, аллюры (шаг, кентер, галоп) с движением камеры, постобработка URP; сцена адаптируется под любое соотношение сторон.

## Другие проекты

- **[The Witcher: Chapter 1](https://github.com/top-secret666/the-witcher)** (Java 17, Swing). Хоррор-визуальная новелла в пиксель-арте на собственном небольшом движке с архитектурой MVP (View → Presenter → Director → Domain). Выпущена сборка под Windows со встроенной средой Java ([v1.1.0](https://github.com/top-secret666/the-witcher/releases)).
- **[Анализ геномных данных](https://github.com/top-secret666/Analiz)** (Python, TensorFlow / Keras). **Победитель научно-технической конференции.** В соавторстве разработала 1D-CNN, которая классифицирует патогенные мутации гена RB1, связанного с риском рака, по данным ClinVar.
- **[Fireboy & Watergirl Multiplayer](https://github.com/top-secret666/fireboy-watergirl-multiplayer)** (C++17, SFML, TCP). Курсовая работа: кооперативный платформер с авторитетным сервером и собственным сетевым протоколом.
- **[PromptLock Defender](https://github.com/top-secret666/promptlock-defender)** (Python). Конференционный проект: антивирус против программ-вымогателей на основе ИИ, семь модулей обнаружения (сигнатуры, AST-анализ, энтропия, ML-классификатор, мониторинг процессов).

## Образование

**Витебский государственный технологический университет (ВГТУ)**, 2023 – 2027 (ожидаемо)
Факультет информационных технологий и робототехники · Специальность «Информационные технологии» · Квалификация: инженер-программист

## Языки

- **Английский:** B1 (средний), активно развиваю разговорный и технический английский
- **Русский, белорусский:** родные

## Готовность к работе

Неоплачиваемая стажировка: да · Полная занятость: да · Офис или гибрид
