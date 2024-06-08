FROM node:20-alpine as build-stage

ARG RAILWAY_SERVICE_ID

RUN echo $RAILWAY_SERVICE_ID

WORKDIR /app
RUN corepack enable

COPY .npmrc package.json pnpm-lock.yaml ./
# RUN --mount=type=cache,id="s/$RAILWAY_SERVICE_ID-/root/.local/share/pnpm/store/v3",target=/root/.local/share/pnpm/store/v3 \
#     pnpm install --frozen-lockfile

COPY . .
RUN pnpm build

FROM nginx:stable-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
