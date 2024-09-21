# 1-2: Git Repositories

We've used the term "repo" or "repository" a number of times already. But what _is_ a Git repo?

Simply, it's a folder with a hidden `.git` folder inside of it that manages versions and changes of the contents.

More nerdily, it's a folder turned into a TARDIS: it contains more than it looks like, and it can travel in time and between possible realities.

![tardis](/img/tardis.jpg)

## Creating Git Repos

Let's start from the assumption that you have Git installed. On the command line, run `git --version` to make sure.

While we're at it, let's configure Git for our usage. We need to tell Git who we are, so our changes (**commits**) can be labeled. We do so by providing a username and an email address.

```bash
git config --global user.name=username
git config --global user.email=user@domain.com
```

The username and email don't _have_ to match your GitHub account, but it's not a bad idea. 

With that out of the way, let's make a new folder **outside of this repository**. We'll use this folder as a sort of laboratory for Git experiments. Then we can take what we've learned and apply it to the Checks for Understanding in this repo.

```bash
mkdir gitdemo
cd gitdemo
git init -b main
```

**Note: The `-b main` isn't strictly necessary, but we do it to make the name of our default branch "main" instead of the built-in "master." Lots of folks are uncomfortable with that language, and it's easy to fix.**

`git init` initializes a Git repo in the current folders. It won't seem like much occurred after you run this command, but just under the surface, quite a bit has taken place. Run `ls -al` and you'll see a hidden `.git` folder. Listing those contents will result in something like this:

```
total 40
drwxrwxr-x 7 user user 4096 Feb 26 15:03 .
drwxrwxr-x 3 user user 4096 Feb 26 15:03 ..
drwxrwxr-x 2 user user 4096 Feb 26 15:03 branches
-rw-rw-r-- 1 user user   92 Feb 26 15:03 config
-rw-rw-r-- 1 user user   73 Feb 26 15:03 description
-rw-rw-r-- 1 user user   21 Feb 26 15:03 HEAD
drwxrwxr-x 2 user user 4096 Feb 26 15:03 hooks
drwxrwxr-x 2 user user 4096 Feb 26 15:03 info
drwxrwxr-x 4 user user 4096 Feb 26 15:03 objects
drwxrwxr-x 4 user user 4096 Feb 26 15:03 refs
```

You're looking at what makes a Git repo a Git repo. You do not have to understand what each file and directory in `.git` does, but it helps to understand that this folder contains the Git magic. In fact, if you deleted all the files in a repo _except_ for the `.git` folder, you'd still be able to reconstruct the files from the last commit!

Before we move on to make our first commit, let's quickly look at the contents of the `.git/config` file.

```
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
```

Now for comparison, check _this_ repo's `.git/config` file. You may be able to see why this file is so important.

Let's move on to the basic workflow in Git, or the "core loop."

