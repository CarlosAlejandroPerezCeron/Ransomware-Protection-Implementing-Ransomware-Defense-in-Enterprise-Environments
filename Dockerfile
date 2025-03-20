FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios
COPY requirements.txt .  
RUN pip install --no-cache-dir -r requirements.txt  

# Copia todos los scripts y archivos del proyecto al contenedor
COPY . /app

# Crear la carpeta de monitoreo
RUN mkdir -p /app/important_files

# Ejecutar el script automáticamente
CMD ["python", "/app/scripts/detect_ransomware.py"]
