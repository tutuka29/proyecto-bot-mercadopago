import os
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters
from utils import pay, process_payment
from config import load_config

# Cargar configuración
load_config()

# Configura tu bot de Telegram
TOKEN = os.getenv("TELEGRAM_BOT_TOKEN")
updater = Updater(TOKEN, use_context=True)
dispatcher = updater.dispatcher

# Agrega los manejadores de comandos y mensajes
dispatcher.add_handler(CommandHandler("pay", pay))
dispatcher.add_handler(MessageHandler(Filters.text & ~Filters.command, process_payment))

# Inicia el bot
updater.start_polling()
