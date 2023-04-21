FROM node:20.0.0-bullseye

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

WORKDIR /usr/src/app

COPY frontend/package.json frontend/yarn.lock ./
RUN yarn install --frozen-lockfile

COPY . /usr/src/app
