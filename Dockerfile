FROM mhart/alpine-node:base
WORKDIR /src
ADD . .

EXPOSE 5050
CMD ["node", "index.js"]
