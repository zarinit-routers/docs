FROM ghcr.io/astral-sh/uv:alpine

WORKDIR /app

COPY uv.lock pyproject.toml ./
RUN uv sync --locked

COPY . .

EXPOSE 8000

CMD ["uv", "run", "mkdocs", "serve"]
