# 1-4: Commit Best Practices

At first, it's tempting to think of commits like saving your work: do it frequently so that you never risk losing anything. I get that, but I urge you to resist that instinct.

Your commit history is the story of your project. How do you want it to read? Personally, I would want clear events that tell the story of how the project evolved. Not every commit has to be an epic moment, but they should be, whenever possible, distinct accomplishments.

Right now our `gitdemo` project is pretty small, so that can be difficult to simulate. Still, let's give it a go. Start by adding a second file.

```bash
echo "This is the second file!1" > file2.txt
git add file2.txt
git commit -m "Add second file"
```

That's not a typo in the first command. Well it is, but it's intentional. We've committed a mistake. Now our objective should be to fix it. Use whatever text editor you like to remove the `1` from the end of `file2.txt`.

The next step in our project's life is to fix the mistake. Bugfixes are important commits and should be isolated as much as possible. Don't lump them in with other changes—at some point you'll want to know _when_ a fix was introduced, and it'll be much easier if it is by itself.

For this commit, we'll learn another shortcut. You can add/commit with one move by adding `-a` to `git commit`, like so:

```bash
git commit -am "Fix file2 typo"
```

This will add _all_ unstaged changes at once, so be careful! Only use this when you know for sure that you want to commit every change you've made.

## What Makes a Good Commit Message?

Although Git opens the full text editor for you, suggesting you write a short story about the commit, I don't think that's correct. A short sentence or phrase that begins with the **action taken** is appropriate. "Add section on good commit messages" might be a solid one for this section of the text. The reader quickly knows what changed and how.

There are other places to add more detail, some of which we'll discuss later. For now, there is a little-known Git feature to add more detail about a commit afterwards and separately: Notes.


## Git Notes

Git Notes are not exactly a secret feature, but since GitHub doesn't show them, they might as well be. They allow additional context to commits. Think of them as accessories to commits—stored separately, but related.

To add a note, run `git notes add`. This will bring up the text editor, allowing you to write whatever you like.

By default, the note will be added to the most recent commit.

Run `git log` to see how the note adds to the commit message.

Wanna makes changes to the current note? `git notes edit` will bring the editor back up!

If you want to add notes for another commit, use `git notes add <commit ID>`. 

`git notes remove` works as you'd expect, and can also accept a commit ID.

## Check For Understanding

**Makes some changes to your files, then commit the changes. Then, add a log to both the current commit and the previous commit!**
