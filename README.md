## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

-  [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
-  [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy On Your Ubuntu Server:

Install Git on your Ubuntu server if it's not already installed:

-  sudo apt-get update
-  sudo apt-get install git

Clone your Git repository to your Ubuntu server:

-  git clone <remote_repository_url>

Change into the directory where you cloned your repository

-  cd your-repository-name

Build and run your Docker container using Docker Compose:

-  docker-compose build
-  docker-compose up -d
-  docker compose up --build (if you want to rebuild the image)

## Installing Docker on Ubuntu

[https://docs.docker.com/engine/install/ubuntu/]

-  Get version of Ubuntu:
   `lsb_release -a`

-  Uninstall old versions:
   `for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done`

-  Install New version
   `sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
   `systemctl start docker`

-  Test Docker
   `sudo docker run hello-world`

-  Build docket image
   `docker build -t <image-name> .`

-  Run docker image
   `docker run -p 3000:3000 <image-name>`

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.
