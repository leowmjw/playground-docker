# Slight modification from: https://nodejs.org/en/docs/guides/nodejs-docker-webapp/ 
# Assumes there is Orchestrator like Nomad to handle process dying :P

FROM node:boron

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy source code over (including package.json)
COPY ./Code /usr/src/app
# and Yarn it
# and Set the right permission
RUN yarn && chown -R node:node .

# Copy the Top Secret ENV
COPY env-example /usr/src/app/.env

USER node

CMD [ "npm", "start" ]

EXPOSE 3000

