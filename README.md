# Creating With Git

![Banner](/img/cwg_banner.png)

This repository and book serves as the instructional material and work template for the course "Creating With Git" on [The Taggart Institute](https://taggartinstitute.org).

## Setup

### Get This Repo

As this is an instructional repo on the use of Git, we'll be forking, then cloning this repo to use it.

You'll need a [GitHub](https://github.com) account. Then, head over to, well, this. [https://github.com/The-Taggart-Institute/creating-with-git](https://github.com/The-Taggart-Institute/creating-with-git). 

Fork the repo to your account with this button: 

![GitHub Fork](/img/fork.png)

With your very own copy of the repo, clone it down by copying the URL and then heading over to your terminal and typing:

```shell
git clone https://github.com/your-github-account/creating-with-git
```

We'll learn more about what `clone` actually means later, but for now, hey! You have your very own copy of this repo. Get in there.

```shell
cd creating-with-git
```

### Install Requirements

This project uses [honkit](https://github.com/honkit/honkit), which is a Node package. That means we need to have Node/NPM installed. head over to [NodeJS](https://nodejs.org/en/) for details on installing Node/NPM for your platform. The LTS version will do fine. Once it's all installed, run the following in our repo:

```shell
npm i --dev
```

This'll install everything we need to run Honkit. You can give it a try by running the following command:

```
npx honkit serve
```

That should launch local web server that serves up the website version of this repo on `http://localhost:4000`. Check it out!

## Usage

As you go through the course, use the material here as supplemental reading, as well as a starting point for your own documentation. At several points, you'll find parts that you'll be asked to fill in to complete your very own resource for Git documentation! As you do, make commits with your own changes, and consider publishing them for yourself!
