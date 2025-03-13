#!/bin/bash

# Configurar variables
REPO_URL="https://github.com/tutuka29/proyecto-bot-mercadopago.git"
PROJECT_DIR="/opt/proyecto-bot-mercadopago"
PYTHON_VERSION="3.9"
VENV_DIR="${PROJECT_DIR}/venv"
TELEGRAM_BOT_TOKEN="YOUR_TELEGRAM_BOT_TOKEN"
TELEGRAM_CHAT_ID="YOUR_TELEGRAM_CHAT_ID"
MERCADOPAGO_PUBLIC_KEY="YOUR_MERCADOPAGO_PUBLIC_KEY"
MERCADOPAGO_ACCESS_TOKEN="YOUR_MERCADOPAGO_ACCESS_TOKEN"

# Función para actualizar el sistema
update_system() {
    sudo apt-get update
    sudo apt-get upgrade -y
}

# Función para instalar dependencias
install_dependencies() {
    sudo apt-get install -y git python3-venv
}

# Función para clonar el repositorio
clone_repository() {
    if [ -d "$PROJECT_DIR" ]; then
        echo "El directorio del proyecto ya existe. Actualizando..."
        cd "$PROJECT_DIR"
        git pull
    else
        echo "Clonando el repositorio..."
        sudo mkdir -p "$PROJECT_DIR"
        sudo chown -R "$USER":"$USER" "$PROJECT_DIR"
        git clone "$REPO_URL" "$PROJECT_DIR"
    fi
}

# Función para crear y activar el entorno virtual
create_venv() {
    if [ -d "$VENV_DIR" ]; then
        echo "El entorno virtual ya existe. Activando..."
        source "$VENV_DIR/bin/activate"
    else
        echo "Creando el entorno virtual..."
        python3-"$PYTHON_VERSION" -m venv "$VENV_DIR"
        source "$VENV_DIR/bin/activate"
    fi
}

# Función para instalar dependencias del proyecto
install_project_dependencies() {
    echo "Instalando dependencias del proyecto..."
    pip install -r "$PROJECT_DIR/requirements.txt"
}

# Función para configurar variables de entorno
configure_env() {
    echo "Configurando variables de entorno..."
    cp "$PROJECT_DIR/.env.example" "$PROJECT_DIR/.env"
    sed -i "s/YOUR_TELEGRAM_BOT_TOKEN/$TELEGRAM_BOT_TOKEN/g" "$PROJECT_DIR/.env"
    sed -i "s/YOUR_TELEGRAM_CHAT_ID/$TELEGRAM_CHAT_ID/g" "$PROJECT_DIR/.env"
    sed -i "s/YOUR_MERCADOPAGO_PUBLIC_KEY/$MERCADOPAGO_PUBLIC_KEY/g" "$PROJECT_DIR/.env"
    sed -i "s/YOUR_MERCADOPAGO_ACCESS_TOKEN/$MERCADOPAGO_ACCESS_TOKEN/g" "$PROJECT_DIR/.env"
}

# Función para iniciar el bot
start_bot() {
    echo "Iniciando el bot..."
    cd "$PROJECT_DIR"
    python main.py
}

# Ejecutar las funciones
update_system
install_dependencies
clone_repository
create_venv
install_project_dependencies
configure_env
start_bot
