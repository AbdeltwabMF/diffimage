FROM alpine:3.9

WORKDIR /diffimage

RUN apk add --no-cache --update bash git make

COPY . .

RUN make install

CMD [ "git", "diff" ]
