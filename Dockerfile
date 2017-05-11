FROM ubuntu

COPY ./test.sh ./test.sh
RUN chmod +x ./test.sh

ENTRYPOINT ["./test.sh"]
