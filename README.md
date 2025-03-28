# Flashcards API

> ⚠️ **Note**: This is a small learning project and not production-ready. It was created to gain hands-on experience with  GraphQL, and modern web development practices. While functional, it's meant for educational purposes and may contain bugs or areas for improvement.

## Overview

This is a GraphQL-based API for a flashcards application, built with Ruby on Rails. The API provides endpoints for managing decks of flashcards, allowing users to create, read, update, and delete both decks and individual flashcards.

## Tech Stack

- **Backend Framework**: Ruby on Rails 8.0.2
- **API**: GraphQL
- **Database**: PostgreSQL
- **Development Tools**:
  - Docker for containerization
  - Kamal for deployment
  - Ruby LSP for development
  - Rubocop for code linting
  - Brakeman for security analysis
- **Tests**: 🛠️ under development

## Features

- GraphQL API for managing flashcards and decks
- Docker-based development environment
- Modern Rails 8 setup with solid gems for caching and job processing
- CORS support for cross-origin requests
- Development tools for code quality and security

## Getting Started

### Prerequisites

- Ruby 3.4.1
- Docker and Docker Compose
- PostgreSQL

### Development Setup

1. Clone the repository
2. Copy the development environment file:
   ```bash
   cp .env.example .env
   ```
3. Generate Rails secrets:
   ```bash
   docker-compose exec web rails credentials:edit
   ```
4. Start the development environment:
   ```bash
   docker-compose up
   ```
5. In a new terminal, set up the database:
   ```bash
   docker-compose exec web rails db:setup
   ```

### Make Shortcuts

The project includes several Make shortcuts to simplify common development tasks:

```bash
make rails <command>  # Run any Rails command
make c              # Open Rails console
make test           # Run the test suite
make sh             # Open a shell in the web container
make attach         # Attach to the web container logs
```

### Running Tests ()

```bash
docker-compose exec web rails test
```

### GraphQL API

The API provides the following main queries:

- `decks`: List all flashcard decks
- `deck(id:)`: Get a specific deck by ID
- `flashcards`: List all flashcards
- `flashcard(id:)`: Get a specific flashcard by ID

## Project Structure

```
app/
├── graphql/          # GraphQL types and resolvers
├── models/           # ActiveRecord models
├── controllers/      # Rails controllers
└── views/           # View templates
```

## Development Guidelines

- Follow the Ruby style guide enforced by Rubocop
- Write tests for new features
- Use GraphQL for all API endpoints
- Keep the codebase clean and well-documented

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is open source and available under the MIT License.

## Acknowledgments

- Ruby on Rails team for the amazing framework
- GraphQL Ruby team for the GraphQL implementation
- All contributors and maintainers of the gems used in this project
