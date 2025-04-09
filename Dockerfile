# Используем существующий образ как базу
FROM timpietruskyblibla/runpod-worker-comfy:3.6.0-flux1-dev

# Устанавливаем рабочую директорию для кастомных нод
WORKDIR /comfyui/custom_nodes

# Устанавливаем ComfyUI-FluxTrainer
RUN git clone https://github.com/kijai/ComfyUI-FluxTrainer.git

# Устанавливаем зависимости ComfyUI-FluxTrainer
RUN pip install -r ComfyUI-FluxTrainer/requirements.txt --no-deps

# Возвращаемся в корневую директорию ComfyUI
WORKDIR /comfyui

# Оставляем команду запуска как в оригинале
CMD ["/start.sh"]
