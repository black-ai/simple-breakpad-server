FROM node:12 as build-stage
RUN apt update && apt install --yes --no-install-recommends python3 build-essential
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .

EXPOSE 1127

CMD ["npm", "run-script", "serve"]
