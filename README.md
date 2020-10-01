# Deploy Open Web Analytics on Render

This repo can be used to deploy [Open Web Analytics](http://www.openwebanalytics.com/) on Render.

- It uses the official [Open Web Analytics](https://github.com/Open-Web-Analytics/Open-Web-Analytics) installation package with the official [PHP with Apache Docker image](https://hub.docker.com/_/php) as the base runtime.
- It uses [MySQL on Render](https://render.com/docs/deploy-mysql) for the database.

## Deployment

### One Click Deploy

Use the button below to deploy Open-Web-Analytics on Render.

[![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/render-examples/open-web-analytics)

### Manual Deployment

See the guide at https://render.com/docs/deploy-open-web-analytics.

If you need help, chat with us at https://render.com/chat.

## Configuration

By default, Open Web Analytics will use your .onrender.com domain. If you wish to use a custom domain, set the PUBLIC_URL environment variable to your domain with protocol, like `https://www.example.com`.
