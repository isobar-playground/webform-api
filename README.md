# Drupal Commerce example Gitpod project

This repository contains an example of Docker and Gitpod
based repository with Drupal Webform demo.

You can run it in almost no time using the button below:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/isobar-playground/webform-api)

## Usage

This repository is created for Gitpod environments, so you
should only use the button above to spin up a new environment.
But you can also use it locally. In this case, run the following commands:
```bash
# Download database dump from S3.
make database

# Start docker environment.
make up

# Install composer dependencies.
make composer install

# Update local environment configuration
make drush deploy

# Get a one-time login URL
make drush uli
```

## Used tools

- https://www.gitpod.io/
- http://drupal.org/
- https://github.com/wodby/docker4drupal/
- https://www.drupal.org/project/webform
