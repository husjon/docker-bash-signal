FROM ubuntu

RUN apt update && apt install -y python

COPY ./test.sh ./test.sh
COPY ./docker-python-signal/test.py ./test.py
RUN chmod +x ./test.sh

ENTRYPOINT ["./test.sh"]
