# mySQL database hosted on Docker

Install the following on your machine:
- Go (`brew install go`)
- Docker & Docker Compose (`brew install docker docker-compose`)

## Hosting the database
1. Run `colima start`
2. Navigate to the `/backend/goapp` directory
3. Run `go mod tidy`
4. Navigate to the `/backend` directory
5. Run `docker-comopose up --build -d`

## Performing database queries
There are 5 endpoint routes on backend service running on port 8080, accessible via frontend service running on port 5173:

Each query should be prefixed with `curl http://localhost:8080`, following by the following suffix commands:
- `/ping` (GET): server health-check
- `/vendors` (GET): fetch vendors
- `/dishes` (GET): fetch dishes
- `/vendors/{id}` (GET): fetch vendors by id
- `/dishes/vendors/{id}` (GET): fetch dishes by vendor id

Supermarkets and products are currently unused attributes that could be included in future builds.
