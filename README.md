# mySQL database hosted on Docker

4 endpoints from port 8080, accessible via frontend port 5173:
- /vendors: fetch vendors
- /dishes: fetch dishes
- /vendors/vn{id}: fetch vendors by id
- /dishes/vendors/vn{id}: fetch dishes by vendor id

Supermarkets and products are currently unused attributes that could be included in future builds.
