# 1-4: Commit Best Practices

At first, it's tempting to think of commits like saving your work: do it frequently so that you never risk losing anything. I get that, but I urge you to resist that instinct.

Your commit history is the story of your project. How do you want it to read? Personally, I would want clear events that tell the story of how the project evolved. Not every commit has to be an epic moment, but they should be, whenever possible, distinct accomplishments.

Right now our `gitdemo` project is pretty small, so that can be difficult to simulate. Still, let's give it a go. Start by adding a second file.

```shell
echo "This is the second file!1" > file2.txt
git add file2.txt
git commit -m "Add second file"
```

That's not a typo in the first command. Well it is, but it's intentional. We've committed a mistake. Now our objective should be to fix it. Use whatever text editor you like to remove the `1` from the end of `file2.txt`.

The next step in our project's life is to fix the mistake. Bugfixes are important commits and should be isolated as much as possible. Don't lump them in with other changes—at some point you'll want to know _when_ a fix was introduced, and it'll be much easier if it is by itself.

For this commit, we'll learn another shortcut. You can add/commit with one move by adding `-a` to `git commit`, like so:

```shell
git commit -am "Fix file2 typo"
```

This will add _all_ unstaged changes at once, so be careful! Only use this when you know for sure that you want to commit every change you've made.

## What Makes a Good Commit Message?

Although Git opens the full text editor for you, suggesting you write a short story about the commit, I don't think that's correct. A short sentence or phrase that begins with the **action taken** is appropriate. "Add section on good commit messages" might be a solid one for this section of the text. The reader quickly knows what changed and how.




