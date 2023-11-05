FROM node:18 as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]

# FROM nginx:alpine
# COPY --from=build /app/dist /usr/share/nginx/html
# EXPOSE 3000
# CMD ["nginx","-g","daemon off;"]
# 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
