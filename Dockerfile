# установка базового образа (host OS)
FROM python:3.8-slim
COPY requirements.txt .

# установка рабочей директории в контейнере
RUN mkdir -p /usr/src/app/telegram_weather_bot/
WORKDIR /usr/src/app/telegram_weather_bot/

# копирование файлв в рабочую директорию
COPY . /usr/src/app/telegram_weather_bot/

# установка зависимостей
RUN pip install -r requirements.txt


# команда, выполняемая при запуске контейнера
CMD [ "python", "./main.py" ]