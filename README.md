# Phraseanet

This is an image running [Phraseanet Digital Asset Management System](https://www.phraseanet.com/en/) on a [php-fpm base image](https://hub.docker.com/_/php/).

## What is Phraseanet

> Phraseanet is an Open Source Digital Asset Management solution dedicated to professionals who need a complete system to manage, publish and share their digital media resources (pictures, videos, audio, PDF, Office documents…).
> Phraseanet is the answer for media management needs in various contexts, from institutional to event or product communication (interconnection with third-party applications such as ecommerce, PIM, MDM…).

*(Quoted from [Phraseanet website](https://www.phraseanet.com/en/phraseanet/product/))*

## How to use this image

As this image only contains PHP FPM and the application, the easiest way to use it, is to run it with [docker-compose](https://docs.docker.com/compose/reference/overview/) for which we provide a [sample compose file](https://github.com/netresearch/docker-phraseanet/blob/master/docker-compose.yml) with nginx, mariab and redis:

```bash
git clone git@github.com:netresearch/docker-phraseanet.git
cd docker-phraseanet
docker-compose up -d
```
See the `.env` file for the default environment variables.

## Environment variables

### ADMIN_EMAIL

The administrators email (defaults to `phrasea@example.com`).

### ADMIN_PASSWORD

The administrators password (defaults to `admin`).

### WEB_HOST

The host name under which the application will be available (defaults to `localhost`).

### DB_HOST

The database host name (**required**).

### DB_APP_NAME

The name of the application database (defaults to `phraseanet_app`).

### DB_DATA_NAME

The name of the data database (defaults to `phraseanet_data`).

### DB_USER

The name of the database user (defaults to `phraseanet`).

### DB_PASSWORD

The database password (*required*).

## Issues

We built this image to quickly try out Phraseanet - however we're not actually using it and thus don't provide any support for it. Though we're open to merge in pull requests on [GitHub](https://github.com/netresearch/docker-phraseanet) to update this image.