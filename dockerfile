# 1. Usar la imagen oficial de Python 3.9 (o cualquier versión de tu preferencia)
FROM python:3.9

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos de tu aplicación al contenedor
COPY . .

# 4. Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Exponer el puerto en el que la app correrá (por defecto FastAPI usa el puerto 8000)
EXPOSE 8000

# 6. Definir el comando para correr la app usando Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
