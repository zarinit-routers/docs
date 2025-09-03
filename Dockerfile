FROM ghcr.io/astral-sh/uv:latest

COPY uv.lock .
RUN syn

COPY . .

EXPOSE 8000

CMD ["uv", "run", "mkdocs", "serve"]
