FROM golang:1.7.4-alpine3.5 as builder 
LABEL maintainer "Roberto Massa <br.roberto.massa@gmail.com>"
WORKDIR /desafio-go
COPY . .
RUN go build -o codeeducation

FROM scratch
LABEL maintainer "Roberto Massa <br.roberto.massa@gmail.com>"
COPY --from=builder /desafio-go .

ENTRYPOINT ["./codeeducation"]

