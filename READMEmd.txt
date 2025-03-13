- Python 3.9
- Cuenta de Mercado Pago con credenciales de API
- Cuenta de Telegram y un bot creado

## Instalación

1. Clona el repositorio:
```
git clone https://github.com/tu-usuario/proyecto-bot-mercadopago.git
```

2. Crea un entorno virtual de Python:
```
python3 -m venv venv
source venv/bin/activate
```

3. Instala las dependencias:
```
pip install -r requirements.txt
```

4. Configura las variables de entorno:
```
cp .env.example .env
nano .env
```
Reemplaza los valores de las variables con tus credenciales.

5. Inicia el bot:
```
python main.py
```

## Uso

1. Envía el comando `/pay` al bot de Telegram.
2. Sigue las instrucciones para enviar los datos de pago.
3. El bot procesará los pagos y enviará notificaciones al chat de Telegram.

## Estructura del proyecto

- `main.py`: Punto de entrada del bot, maneja los comandos y mensajes del usuario.
- `utils.py`: Contiene funciones de utilidad, como la validación de datos de pago y el procesamiento de los pagos.
- `config.py`: Carga y proporciona acceso a las variables de entorno.
- `requirements.txt`: Lista de dependencias del proyecto.
- `README.md`: Documentación del proyecto.