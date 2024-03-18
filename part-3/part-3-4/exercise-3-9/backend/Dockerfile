FROM golang:1.16 as build-stage

WORKDIR /usr/src/app

COPY ./example-backend .

# https://www.cyberciti.biz/faq/understanding-etcpasswd-file-format/
RUN echo "appuser:somepswd:12345:12345:/home:/:" > /pswd

# https://medium.com/pragmatic-programmers/compiling-your-go-application-for-co-ntainers-b513190471aa
RUN CGO_ENABLED=0 go build # CGO_ENABLED=0 was required

FROM scratch

EXPOSE 8080

WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app .
COPY --from=build-stage /pswd /etc/passwd

USER appuser

ENTRYPOINT ["./server"]

