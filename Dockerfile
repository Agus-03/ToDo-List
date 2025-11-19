# ---- Etapa 1: Imagen base ----
FROM node:20-alpine AS base

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el package.json y package-lock.json
COPY package*.json ./

# Instalamos dependencias (solo producción por ahora)
RUN npm install --production

# Copiamos el resto del código
COPY . .

# Exponemos el puerto en el que corre la app
EXPOSE 3000

# Comando para ejecutar el servidor
CMD ["npm", "start"]
