FROM node:12.0.0
RUN mkdir -p /usr/src/react-ts
COPY build /usr/src/react-ts/build/
COPY data.json /usr/src/react-ts/
COPY server.js /usr/src/react-ts/
COPY deploy-package.json /usr/src/react-ts/package.json
WORKDIR /usr/src/react-ts
RUN echo 'package-lock=false' >> .npmrc
RUN npm install
EXPOSE 4002
CMD ["node", "server.js"]