FROM strapi/base

ARG BUILD_MODE
ENV NODE_ENV "$BUILD_MODE"

WORKDIR /app

COPY ./package.json ./
COPY ./package-lock.json ./

RUN npm install

COPY . .

RUN npm build

EXPOSE 8080

CMD ["npm", "start"]