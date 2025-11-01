#!/bin/bash

#!/bin/bash

ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
    echo "env не найден. Создаю новый..."
    python3 -m venv .env
    echo env успешно создан"
else
    echo "env найден, продолжаю..."
fi

.venv/bin/pip3 install -r requirements.txt
.venv/bin/python3 main.py