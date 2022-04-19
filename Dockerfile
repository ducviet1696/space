FROM node:14.18

WORKDIR /workspace

COPY package.json package-lock.json ./

RUN yarn install --frozen-lockfile

COPY ./ ./

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]

