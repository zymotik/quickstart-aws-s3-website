# Quickstart: AWS S3 Website Hosting with terraform, webpack & TypeScript baked in

## Goal

A repo to get you started using an Amazon AWS S3 Bucket as a website to host a web app using modern coding techniques and tools.

## TLDR;

Install dependencies:

* [Git](https://git-scm.com/downloads)
* [Node.js](https://nodejs.org/en/download/)
* [Terraform](https://www.terraform.io/downloads.html) ([guide to install](https://learn.hashicorp.com/terraform/getting-started/install.html))


From your terminal, install Node dependencies with the command:

```
npm install
```

Change configuration values:

Change your bucket name in `quickstart.tf` (variable "bucket"). Add your AWS keys to the `quickstart.tf` file if you don't have them installed globally.

## Deployment

As simple as:
```
npm run deploy
```
You will be asked to confirm before Terraform makes any changes.

## Clean-up AWS environment

```
npm run destroy
```
You will be asked to confirm before Terraform makes any changes.


## Issues

If the `npm install` step causes an error, it's likely you do not have Terraform installed correctly. Make sure it is available on the `path`. See the install guide above.