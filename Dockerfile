FROM node:12

ENV PORT 3000

RUN mkdir -p /code
WORKDIR /code

COPY package.json /code
RUN yarn

COPY . /code

EXPOSE 3000

CMD ["yarn", "dev"]
