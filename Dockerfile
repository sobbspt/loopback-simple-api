FROM node

RUN mkdir -p /src/app

COPY package.json /src
COPY app /src/app

RUN cd /src \
  && npm i

WORKDIR /src

CMD ["npm", "start"]
