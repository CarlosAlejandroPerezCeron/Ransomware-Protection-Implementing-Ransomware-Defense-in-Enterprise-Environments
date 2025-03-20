#!/bin/bash

echo "🚀 Configurando entorno para protección contra ransomware..."

# Crear entorno virtual
python3 -m venv env
source env/bin/activate

# Instalar dependencias
pip install -r requirements.txt

# Crear carpeta de backups
mkdir -p /backup

# Otorgar permisos a scripts
chmod +x scripts/*.sh

echo "✅ Instalación completada. Ejecuta 'python scripts/detect_ransomware.py' para monitoreo."
