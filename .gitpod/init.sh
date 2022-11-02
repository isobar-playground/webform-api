# Do magic with permissions.
sudo setfacl -dR -m u:$(whoami):rwX -m u:1000:rwX .
sudo setfacl -R -m u:$(whoami):rwX -m u:1000:rwX  .

# Copy local docker-compose overrides.
cp .gitpod/docker-compose.override.yml .

# Download database dump and files from S3.
make database
make files

# Download images and start the docker environment.
make up

# Install composer dependencies.
make composer install

# Update local environment configuration.
make drush deploy

# Generate oauth keys.
make drush simple-oauth:generate-keys ../oauth

# Stop environment and get ready for workspace to start it.
make stop

# Make sure that files downloaded by the composer have good permissions too.
sudo setfacl -dR -m u:$(whoami):rwX -m u:1000:rwX .
sudo setfacl -R -m u:$(whoami):rwX -m u:1000:rwX  .
