FROM node:18

WORKDIR /app

COPY lightspeed-test-task-front/package.json lightspeed-test-task-front/pnpm-lock.yaml /app/lightspeed-test-task-front/
COPY lightspeed-test-task-back/package.json /app/lightspeed-test-task-back/

RUN npm install -g pnpm

WORKDIR /app/lightspeed-test-task-front
RUN pnpm install

WORKDIR /app/lightspeed-test-task-back
RUN npm install

COPY lightspeed-test-task-front/tsconfig.json /app/lightspeed-test-task-front/tsconfig.json

COPY lightspeed-test-task-front /app/lightspeed-test-task-front

COPY lightspeed-test-task-back /app/lightspeed-test-task-back

RUN pnpm --prefix /app/lightspeed-test-task-front run build

EXPOSE 5173 3000

RUN npm install -g concurrently

CMD ["concurrently", "npm --prefix /app/lightspeed-test-task-back run start", "pnpm --prefix /app/lightspeed-test-task-front run dev"]
