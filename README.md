# dotfiles :floppy_disk:
welcome to my dotfiles :wave:! These are my dotfiles for Zsh, git, android and beyond :dizzy:

Questions? Comments? Concerns? Complements? Open an issue or tweet at me  [@mandybess](https://twitter.com/mandybess)

## prerequisites :clipboard:  

* OS X
* Zsh (to change your default shell to Zsh: `chsh -s $(which zsh) $USER`)
* [Homebrew](http://brew.sh/)

## installation :wrench:  
    $ git clone git@github.com:mandybess/dotfiles.git $PROJECTS/dotfiles
    $ cd $DOTFILES
    $ ./setup/setup

It will install [rcm] and use that to safely symlink the dotfiles, prompting you
if a file already exists (like if you already have `~/.zshrc`).

[rcm]: http://thoughtbot.github.io/rcm/rcm.7.html

## organization :card_index:  

This repo uses [rcm] for management. It's pretty dope, you should probably check it
out :sunglasses:

`rcm` will symlink all files into place, keeping the folder structure relative
to the tag root. However, our `rcrc` is explicitly ignoring a few things:

 - `Brewfile`s are the homebrew dependencies for a specific tag, and therefore don't
   need to be symlinked.
 - Anything named `setup` (or in a directory with that name) is assumed to be
   part of the general setup process, and will therefore also not be symlinked.

The full list of what is being ignored is being controlled by the `EXCLUDES` key in my [`rcrc`][rcrc].

[rcrc]: https://github.com/gfontenot/dotfiles/blob/master/rcrc
[rcm]: https://github.com/thoughtbot/rcm

## styles :dizzy:  
For every IDE or application I use in my regular development there is a corresponding `themes` folder (i.e. [`intelliji-themes`][intelliji-themes])

[intelliji-themes]: https://github.com/mandybess/dotfiles/intelliji-themes

## attribution :couple:  

Many scripts and configurations (including this sentence) have been inspired by or outright stolen from
my colleagues at thoughtbot. Of special note, I've stolen many things from
[Gabe Berke-Williams], [Gordon Fontenot], and [Mark Adams], among others that I'm sure I'm forgetting.

[Gabe Berke-Williams]: https://github.com/gabebw/dotfiles
[Gordon Fontenot]: https://github.com/gfontenot/dotfiles
[Mark Adams]: https://github.com/hyperspacemark/dotfiles
