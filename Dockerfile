FROM mhart/alpine-node:base
WORKDIR /src
ADD . .

CMD ["node", "index.js"]
