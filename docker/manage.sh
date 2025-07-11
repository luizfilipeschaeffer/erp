#!/bin/sh
# Script de gerenciamento Docker (Linux/Mac)
cd "$(dirname "$0")"

case "$1" in
  up)
    docker-compose up --build
    ;;
  down)
    docker-compose down
    ;;
  logs)
    docker-compose logs -f
    ;;
  exec)
    shift
    docker-compose exec "$@"
    ;;
  build)
    docker-compose build
    ;;
  *)
    echo "Uso: $0 {up|down|logs|exec <serviço> <cmd>|build}"
    exit 1
    ;;
esac 