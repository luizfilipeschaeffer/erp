# Dockerfile para Next.js (dev e pronto para prod)
FROM node:20-alpine AS base
WORKDIR /app

# Instala dependências
COPY package.json package-lock.json ./
RUN npm install

# Copia o restante do código
COPY . .

# Expor porta padrão do Next.js
EXPOSE 3000

# Comando padrão: dev (hot reload)
CMD ["npm", "run", "dev"] 