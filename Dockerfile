FROM node
WORKDIR /app
COPY ["package.json", "package-lock.json", "/"]
RUN ["npm", "install"]
COPY ["index.ts", "./"]
COPY ["tsconfig.json", "./"]
RUN ["npx", "tsc"]
CMD npx ts-node index.ts