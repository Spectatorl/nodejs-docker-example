FROM node:24-bookworm-slim

WORKDIR /app

ENV PATH=/app/node_modules/.bin:$PATH

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

CMD ["npm", "test"]
