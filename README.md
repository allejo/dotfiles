# Please Don't Steal My API Keys

I use [`yadm`](https://github.com/TheLocehiliosan/yadm) for managing my dotfiles.

```bash
yadm clone git@github.com:allejo/dotfiles.git

# Optional (if there are conflicts/unsynced changes)
yadm checkout "/Users/allejo/"
```

## Setting Things Up

I'm trying to make use of [alternative files](https://yadm.io/docs/alternates) so that I can only load up files that I need in each respective environment; e.g., don't load up my PowerShell `.ps1` config on non-Windows machines.

```bash
yadm init

# Chose which files to load, what is this device to you?
yadm config local.class Personal
yadm config local.class Work
yadm config local.class Server

# symlink the necessary files if they're needed
yadm alt
```

## Committing Changes

To push changes of my dotfiles, [use `yadm` as if it were git](https://github.com/yadm-dev/yadm#a-very-quick-tour).

```bash
# Add files/changes
yadm add .dotfile
yadm commit
yadm push
```

## Who is this README for?

- Me. Cuz I don't remember things.
- Anyone who wants to do something similar to what I did
