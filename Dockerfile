FROM chainguard/go as builder
ENV GOOS=linux
ENV CGO_ENABLED=0
ENV GO111MODULE=on
COPY . /app
WORKDIR /app
RUN make testorama

FROM jksolbakken/onbuild:1.20260528112215
RUN echo yolo


