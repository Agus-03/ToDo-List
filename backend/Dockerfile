# ---- ETAPA 1: Construcción (Build Stage) ----
FROM node:20-alpine AS builder

# Establecemos el directorio de trabajo
WORKDIR /app

# --- ¡CORRECCIÓN DE RUTA CLAVE! ---
# Copiamos package.json desde su ubicación real (./backend/) al directorio actual (./).
COPY ./backend/package*.json ./

# Instalamos dependencias
RUN npm install

# Copiamos el resto del código (./backend/.) al directorio de trabajo (/app)
COPY ./backend/. .


# ---- ETAPA 2: Producción (Runtime Stage) ----
FROM node:20-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos todo lo construido desde la etapa 'builder'
COPY --from=builder /app /app

ENV NODE_ENV production

EXPOSE 3000

CMD ["npm", "start"]