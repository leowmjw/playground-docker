# Example Dockerfile for NodeJS App Handling Sensitive Credentials

## Objective

Simple demo to show how to package NodeJS Express App with sensitive credentials to be used by Docker.  Sensitive credentials for the app is accessed via the dotenv lib.

## To Run + Test
Current Version Deployed (via [now](https://zeit.co/now)) at: 
[https://nodejs-express-env-wezgpcltto.now.sh]

```
leow$ now --public
> Deploying ~/Desktop/PROJECTS/DOCKER/playground-docker/nodejs-express-env under leow
> Ready! https://nodejs-express-env-wezgpcltto.now.sh [2s]
> Synced 13 files (555B) [3s] 
> Initializing…
> Building
> ▲ docker build
Sending build context to Docker daemon 35.84 kBkB
> Step 1 : FROM node:boron
>  ---> 3f3928767182
> Step 2 : RUN mkdir -p /usr/src/app
>  ---> Using cache
>  ---> bd64e5e234df
> Step 3 : WORKDIR /usr/src/app
>  ---> Using cache
>  ---> 5664b67d89b0
> Step 4 : COPY ./Code /usr/src/app
>  ---> Using cache
>  ---> 28b7b31fdb77
> Step 5 : RUN yarn && chown -R node:node .
>  ---> Running in 2bb9761e6265
> yarn install v0.24.4
> [1/4] Resolving packages...
> [2/4] Fetching packages...
> [3/4] Linking dependencies...
> [4/4] Building fresh packages...
> Done in 2.95s.
>  ---> 41ca45d3e7c4
> Removing intermediate container 2bb9761e6265
> Step 6 : COPY env-example /usr/src/app/.env
>  ---> 028eba69c819
> Removing intermediate container faecfe035958
> Step 7 : USER node
>  ---> Running in 92bc72dfc2c8
>  ---> a002f027188f
> Removing intermediate container 92bc72dfc2c8
> Step 8 : CMD npm start
>  ---> Running in 58d8d909a058
>  ---> 67b838562316
> Removing intermediate container 58d8d909a058
> Step 9 : EXPOSE 3000
>  ---> Running in db945bfbcc78
>  ---> ea3cd582e38b
> Removing intermediate container db945bfbcc78
> Successfully built ea3cd582e38b
> ▲ Storing image
> ▲ Deploying image
> ▲ Container started
> npm info it worked if it ends with ok
> npm info using npm@3.10.10
> npm info using node@v6.10.3
> npm info lifecycle code@0.0.0~prestart: code@0.0.0
> npm info lifecycle code@0.0.0~start: code@0.0.0
> > code@0.0.0 start /usr/src/app
> > node ./bin/www
> Deployment complete!
```

## References:
- Official NodeJS Doc: https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
- Production with Test Example: https://semaphoreci.com/community/tutorials/dockerizing-a-node-js-web-application
- dotenv Lib: https://www.npmjs.com/package/dotenv

