FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i --production
COPY src ./src/
CMD [ \
    "node", \
    "--es-module-specifier-resolution=node", \
    "--experimental-modules", \
    "src/index.js" \
]

