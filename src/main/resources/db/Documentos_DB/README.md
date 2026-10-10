# GMS Bank

Sistema web de gerenciamento bancário desenvolvido como projeto acadêmico de Engenharia de Software, utilizando Java, Spring Boot e PostgreSQL.

## 🎥 Demonstração do projeto

**[▶️ Clique aqui para assistir ao vídeo de apresentação do GMS Bank](https://drive.google.com/file/d/1M_V60iuVZvHm1VpHt0fXDwNG_Tl8a3Lb/view?usp=sharing)**

## Tecnologias utilizadas

- **Java 21** — linguagem de programação.
- **Spring Boot** — estrutura principal da aplicação.
- **Spring MVC** — gerenciamento das rotas e requisições web.
- **Spring Data JPA / Hibernate** — persistência e acesso aos dados.
- **Spring Security** — autenticação e segurança.
- **Thymeleaf** — renderização das páginas HTML.
- **PostgreSQL** — sistema gerenciador de banco de dados.
- **Flyway** — versionamento e migração do banco de dados.
- **Docker e Docker Compose** — execução dos serviços em contêineres.

## Funcionalidades

- Dashboard com indicadores gerais do sistema.
- Gerenciamento de clientes.
- Gerenciamento de contas bancárias.
- Consulta e acompanhamento de transações.
- Operações bancárias por meio de procedures no banco de dados.
- Utilização de recursos SQL para consultas e processamento de dados.

## Recursos de banco de dados

O projeto utiliza o PostgreSQL para armazenar e processar os dados bancários.

Os scripts de migração do banco ficam em:

`src/main/resources/db/migration/`

Esses scripts versionam a estrutura do banco de dados e os recursos SQL utilizados pelo projeto, incluindo:

- **Views:** consultas reutilizáveis para acesso organizado aos dados.
- **Functions:** funções para processamento e consulta de informações.
- **Procedures:** rotinas para execução de operações bancárias, como depósitos, saques e transferências.

O Flyway gerencia a execução das migrações durante a inicialização da aplicação.

## Como executar o projeto

### Pré-requisitos

- Docker instalado.
- Docker Compose disponível.
- Navegador web atualizado.

### Inicialização

Na pasta raiz do projeto, execute:

```bash
docker compose up --build
```

Aguarde a inicialização da aplicação e do banco de dados.

Acesse pelo navegador:

**http://localhost:8081**

Para encerrar os serviços:

```bash
docker compose down
```

## Estrutura do projeto

- `src/main/java/` — código-fonte Java.
- `src/main/resources/` — configurações e recursos da aplicação.
- `src/main/resources/templates/` — páginas HTML com Thymeleaf.
- `src/main/resources/db/migration/` — scripts SQL do Flyway.
- `pom.xml` — dependências e configuração do Maven.
- `Dockerfile` — configuração da imagem da aplicação, caso presente.
- `docker-compose.yml` — configuração dos serviços Docker.

## Autor

**Carlos Gabriel Monteiro de Sousa**

Universidade Santo Agostinho (UNIFSA)  
Curso: Engenharia de Software
