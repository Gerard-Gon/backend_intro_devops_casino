# 1. Imagen base liviana de Node
FROM node:20-alpine

# 2. Directorio de trabajo
WORKDIR /app

# 3. Copiar dependencias e instalar (limpio)
COPY package*.json ./
RUN npm install

# 4. Copiar el código fuente
COPY . .

# 5. Cambiar al usuario no root seguro
USER node

# 6. Exponer el puerto del backend
EXPOSE 3000

# 7. Comando de arranque
CMD ["npm", "start"]