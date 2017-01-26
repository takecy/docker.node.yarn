FROM node:6.9.4

LABEL maintainer takecy

ENV YANN_VERSION 0.19.1

RUN mkdir -p /usr/src/app\
 && curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version ${YANN_VERSION}\
 && $HOME/.yarn/bin/yarn --version

ENV PATH /root/.yarn/bin:$PATH

WORKDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD COPY package.json /usr/src/app/
ONBUILD COPY yarn.lock /usr/src/app/
ONBUILD RUN yarn
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]