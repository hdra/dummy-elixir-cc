FROM elixir:1.5.3
WORKDIR /app
RUN mix local.hex --force
