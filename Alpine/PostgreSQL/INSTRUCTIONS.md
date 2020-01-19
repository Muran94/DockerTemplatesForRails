# Introduction
This is a repository to make it easier for you to start a dockerized rails app.
It is based on a light weight alpine based Ruby image.
It uses a PostgreSQL for the database.
Also, it runs the webpack-dev-server, which makes your JS development faster.

# How to use
1. Clone this Repository

2. Copy this directory with a new name.
`cp -r DockerTempaltesForRails/Alpine/PostgreSQL <App Name>`

3. Initialize the application.
Initialize your app with the command below.

`bash initialize_app.sh`

The command above will initialize rails app, db, and webpacker.

4. Edit your config/webpacker.yml
Change the host value from `localhost` to `webpacker`

```yaml
development:
  <<: *default
  dev_server:
    host: webpacker
```