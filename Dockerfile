FROM rust:1.67-slim

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN cargo build

ENV PORT 8000
EXPOSE 8000

CMD ["cargo", "run", "-q"]
