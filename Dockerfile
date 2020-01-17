FROM docker.art.lmru.tech/golang:stretch
ENV NPM_CONFIG_LOGLEVEL="info"

ENV INSTALL_PATH /app

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .
RUN go get github.com/gorilla/mux
# VOLUME ["$INSTALL_PATH/public"]

RUN go build -o main . 


EXPOSE 8000

# CMD ["go", "run main.go"]
CMD ["/app/main"]