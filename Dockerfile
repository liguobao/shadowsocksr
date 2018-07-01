FROM python:3.6
WORKDIR /app
ADD . /app
RUN pip install -r requirements.txt
RUN chmod +x ./scripts/*.sh && chmod +x ./shadowsocks/*.sh
COPY ./configs/apiconfig.py ./configs/userapiconfig.py
COPY ./configs/config.json ./configs/user-config.json
COPY ./configs/mysql.json ./configs/usermysql.json
CMD  python server.py