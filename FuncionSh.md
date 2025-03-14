Este script contiene las siguientes funciones:

1. `update_system()`: Actualiza el sistema operativo.
2. `install_dependencies()`: Instala las dependencias necesarias (Git y Python virtual environment).
3. `clone_repository()`: Clona el repositorio del proyecto o lo actualiza si ya existe.
4. `create_venv()`: Crea y activa el entorno virtual de Python.
5. `install_project_dependencies()`: Instala las dependencias del proyecto a través del archivo `requirements.txt`.
6. `configure_env()`: Configura las variables de entorno (Telegram bot token, Telegram chat ID, Mercado Pago public key y access token).
7. `start_bot()`: Inicia el bot de Telegram.

Las variables que debes reemplazar son:

- `REPO_URL`: la URL de tu repositorio de Git.
- `TELEGRAM_BOT_TOKEN`: el token de tu bot de Telegram.
- `TELEGRAM_CHAT_ID`: el ID del chat de Telegram donde se enviarán las notificaciones.
- `MERCADOPAGO_PUBLIC_KEY`: tu clave pública de Mercado Pago.
- `MERCADOPAGO_ACCESS_TOKEN`: tu token de acceso de Mercado Pago.

Para utilizar este script, sigue estos pasos:

1. Guarda el script en un archivo con la extensión `.sh` (por ejemplo, `install.sh`).
2. Abre una conexión SSH a tu servidor.
3. Transfiere el script al servidor utilizando una herramienta como `scp` o `sftp`.
4. Concede permisos de ejecución al script: `chmod +x install.sh`.
5. Ejecuta el script: `./install.sh`.

Después de seguir estos pasos, el bot de Telegram debería estar funcionando en tu servidor.
