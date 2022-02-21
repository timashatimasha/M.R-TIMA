FROM fusuf/whatsasena:latest

RUN git clone https://github.com/timashabuddila/M.R-TIMA
WORKDIR /root/M.R-TIMA/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]


