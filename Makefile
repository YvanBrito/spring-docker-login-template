# 🔥 Variáveis
COMPOSE=docker compose
APP=app
DB=postgres

# 🚀 Comandos principais
dev:
	$(COMPOSE) up

dev-d:
	$(COMPOSE) up -d

prod:
	$(COMPOSE) -f docker-compose.yml up --build

stop:
	$(COMPOSE) down

rebuild:
	$(COMPOSE) up --build --force-recreate

logs:
	$(COMPOSE) logs -f

app-logs:
	$(COMPOSE) logs -f $(APP)

db-logs:
	$(COMPOSE) logs -f $(DB)

shell:
	$(COMPOSE) exec $(APP) sh

db-shell:
	$(COMPOSE) exec $(DB) psql -U $$(grep POSTGRES_USER .env | cut -d '=' -f2) -d $$(grep POSTGRES_DB .env | cut -d '=' -f2)

reset-db:
	$(COMPOSE) down -v

# 🧽 Limpeza geral
clean:
	$(COMPOSE) down -v --rmi all --remove-orphans

# 🆘 Ajuda
help:
	@echo ""
	@echo "Comandos disponíveis:"
	@echo "  make dev         → Sobe ambiente de desenvolvimento (com hot reload)"
	@echo "  make dev-d       → Sobe ambiente de desenvolvimento sem logs (com hot reload)"
	@echo "  make prod        → Sobe ambiente de produção"
	@echo "  make stop        → Derruba os containers"
	@echo "  make rebuild     → Derruba e sobe novamente com build forçado"
	@echo "  make logs        → Logs de todos os serviços"
	@echo "  make app-logs    → Logs apenas do Spring Boot"
	@echo "  make db-logs     → Logs apenas do PostgreSQL"
	@echo "  make shell       → Entra no container da aplicação"
	@echo "  make db-shell    → Acessa o banco PostgreSQL via psql"
	@echo "  make reset-db    → Derruba e remove volume do banco (reset total)"
	@echo "  make clean       → Limpa tudo: containers, volumes, imagens e orfãos"
	@echo "  make help        → Mostra essa ajuda"
	@echo ""
