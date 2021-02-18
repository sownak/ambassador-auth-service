FROM mhart/alpine-node:8

MAINTAINER Sownak Roy <sownak@gmail.com>
LABEL PROJECT_REPO_URL         = "git@github.com:sownak/ambassador-auth-service.git" \
      PROJECT_REPO_BROWSER_URL = "https://github.com/sownak/ambassador-auth-service" \
      DESCRIPTION              = "Updated auth service for Ambassador" \

WORKDIR /src
ADD . .
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
