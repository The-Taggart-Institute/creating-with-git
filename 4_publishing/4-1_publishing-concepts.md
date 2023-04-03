# 4-1: Publishing Concepts

For this Unit, we are leaving our trusty `gitdemo` behind. Thank you for your service, `gitdemo`, but where we're going, you can't follow.

This Unit is the reason you forked the `creating-with-git` repo lo those many Units ago. This is where we start to build something legitimately useful: a documentation site.

## Git and Documentation

While Git is most famous for work with projects made of programming languages, we've demonstrated in this course that it is just as capable at managing projects of human language—provided the files are plaintext. That's why we mentioned Markdown back at the beginning.

It also happens to be how this site is built! Every page you see rendered here is the result of a Markdown file being processed by the Honkit tool into a static HTML page, which we can serve a number of different ways.

Git serves as a powerful tool for managing documentation—and not just for software projects. All too often, important institutional knowledge lies withering in some old Wiki, or in knowledge systems (_cough Confluence cough_) that nobody uses because nobody likes the interface. These entropic knowledgebases are dangerous to organizations. Instead, I recommend a tool that is lightweight, flexible, and has stood the test of time.

For input data, that's plaintext in the form of plaintext (Markdown). For management, Git fits that bill nicely. And for output, nothing makes more sense than HTML. With decades under their belt, you can rely on the knowledge stored in Git repos to be available and updateable for years to come.

GitHub has a Wiki option for Pro accounts, but no: we're talking about how to make knowledge accessible and transferable. We can't rely on any single platform's features. Instead, we're going to use the open source [Honkit](https://github.com/honkit/honkit) to convert a repo of Markdown files—y'know, like this one—into a searachable website of documentation. Y'know, like this one.

😮

That's right: all along, this site and the repo it's based on has been a secret template for your own documentation project. 

## Repo Preparation

**Everything we do from here on out should take place in your fork of `creating-with-git`**.

In the next lesson, we're going to deploy our docs site! If you followed the instructions in the [Introduction](README.md), you already have Node and Honkit working—in fact, you may be reading this site on the local version of the docs. If not, head back to that page and make sure to run the commands listed there to install Node and Honkit.

In the next chapter, we're going to use GitHub's Pages feature to publish our docs as a static site. This will mean you need to shut down `npx honkit serve` if you're running it from your local fork. You're more than welcome to keep running it from the Taggart Institute copy of the repo, or referring to the docs at [cwg.taggartinstitute.org](https://cwg.taggartinstitute.org).

See you there!
