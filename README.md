# emacs.d

Minimal Emacs configuration. Symlinked to `~/.emacs.d/` by my dotfiles bootstrap.

- **`early-init.el`** — frame, font (PragmataPro), fullscreen behavior. Loaded before the GUI initializes.
- **`init.el`** — light color theme and UI mode toggles.

## Install

```sh
git clone git@github.com:fridlyand/emacs.d.git ~/src/emacs.d
ln -s ~/src/emacs.d/init.el       ~/.emacs.d/init.el
ln -s ~/src/emacs.d/early-init.el ~/.emacs.d/early-init.el
```
