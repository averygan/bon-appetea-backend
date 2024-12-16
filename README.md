# mySQL database hosted on Docker

5 endpoint routes on backend service running on port 8080, accessible via frontend service running on port 5173:
- `/ping` (GET): server health-check
- `/vendors` (GET): fetch vendors
- `/dishes` (GET): fetch dishes
- `/vendors/{id}` (GET): fetch vendors by id
- `/dishes/vendors/{id}` (GET): fetch dishes by vendor id

Supermarkets and products are currently unused attributes that could be included in future builds.
