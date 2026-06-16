# Kotlin Hello World - Spring Boot

Минимальный проект на Kotlin с использованием Spring Boot и Maven.

## Стек технологий

- **Kotlin** 1.9.24
- **Spring Boot** 3.3.0
- **Maven** для управления зависимостями
- **Java** 21

## Структура проекта

```
kotlin-hello-world/
├── src/
│   ├── main/
│   │   ├── kotlin/
│   │   │   └── com/example/
│   │   │       ├── Application.kt          # Main Spring Boot application
│   │   │       └── controller/
│   │   │           └── HelloController.kt  # REST контроллер
│   │   └── resources/
│   │       └── application.yml             # Конфигурация приложения
│   └── test/
├── pom.xml                                 # Maven конфигурация
└── README.md
```

## Быстрый старт

### Требования
- Java 21+
- Maven 3.6+

### Сборка

```bash
mvn clean package
```

### Запуск

```bash
mvn spring-boot:run
```

Приложение запустится на `http://localhost:8080`

### API Endpoints

1. **Hello World**
   ```
   GET http://localhost:8080/
   ```
   Ответ:
   ```json
   {
     "message": "Hello World!"
   }
   ```

2. **Приветствие с параметром**
   ```
   GET http://localhost:8080/hello?name=Kotlin
   ```
   Ответ:
   ```json
   {
     "message": "Hello Kotlin!"
   }
   ```

## Запуск JAR файла

```bash
java -jar target/kotlin-hello-world-1.0.0.jar
```

## Разработка

Проект готов для дальнейшего расширения:
- Добавления новых REST контроллеров
- Интеграции с базой данных
- Добавления Service слоя
- Настройки аутентификации и авторизации

---

Создано как минимальный starter template для Spring Boot приложений на Kotlin.