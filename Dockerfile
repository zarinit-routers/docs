FROM ghcr.io/astral-sh/uv:latest

COPY uv.lock .
RUN uv sync

COPY . .

EXPOSE 8000

CMD ["uv", "run", "mkdocs", "serve"]
