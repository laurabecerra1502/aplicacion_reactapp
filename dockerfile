# Usamos una imagen base de Node.js
FROM node:latest

WORKDIR /app

# Copiamos el archivo package.json y package-lock.json (si existe) al directorio de trabajo
COPY package*.json ./

# Copiamos el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Exponemos el puerto en el que la aplicación va a escuchar
EXPOSE 3000

# Comando para iniciar la aplicación
CMD [ "node", "app.js" ]