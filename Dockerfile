FROM ghcr.io/astral-sh/uv:alpine as builder

WORKDIR /app

COPY uv.lock pyproject.toml ./
RUN uv sync --locked

COPY . .

RUN uv run mkdocs build --site-dir /dist

FROM httpd:latest

COPY --from=builder /dist /usr/local/apache2/htdocs
