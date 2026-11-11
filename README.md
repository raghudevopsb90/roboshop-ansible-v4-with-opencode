# RoboShop Ansible Deployment

## Prerequisites

- 13 RHEL 10 x86_64 servers, one for each component
- Each server reachable via hostname: `<component>-dev.rdevopsb90.online`
- Login credentials: `ec2-user` / `DevOps321` with passwordless sudo
- SELinux and firewalld disabled on all servers

## Deployment Order

Follow this order to set up the RoboShop microservices application:

1. **frontend** - Nginx + static frontend (no backend dependencies)
2. **mysql** - MySQL database (needed by catalogue, shipping, ratings, orders)
3. **catalogue** - Go service for product listings
4. **mongodb** - MongoDB database (needed by user, orders)
5. **user** - Node.js service for user management
6. **valkey** - Valkey cache (needed by cart)
7. **cart** - Node.js service for shopping cart
8. **shipping** - Java service for shipping calculation
9. **rabbitmq** - RabbitMQ message broker (needed by payment, orders, notification)
10. **payment** - Python service for payment processing
11. **notification** - Python service for email notifications
12. **orders** - Java service for order management
13. **ratings** - Python service for product ratings

## Usage

```bash
./run.sh <component>
```

Example:
```bash
./run.sh mysql
./run.sh catalogue
```
