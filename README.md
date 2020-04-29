<p align="center">
  <img width="300" align="center" alt="nocloud" src="https://user-images.githubusercontent.com/6654199/42130706-5c3926e6-7cba-11e8-9274-4e5131ed755e.png">
</p>

# nocloud recursive node_modules 🔄🚫☁️
iCloud nosync cli

# This fork is modified to recursively check and "fix" all node_modules in a given directory

## What is nocloud?
Firstly a WIP or quick POC. `nocloud` pretends to solve the problem of syncing files with iCloud that might need to follow 
any given name convention. I'm 👀 at you `node_modules` folder 😅. 

## How does it work?
iCloud, as today, will ignore any file or folder ending in `.nosync` when syncing to the ☁️. Knowing that, **nocloud** does
the following:

1. Renames any given files or directories, adding the extension `.nosync`.
2. Creates a symbolic link with the original name to the renamed one.

## Usage

Clone or download `nocloud.sh`

Make it executable by running:

```sh
$ chmod +x nocloud.sh
```

or install it globally by running:

```sh
$ install nocloud.sh /usr/local/bin/nocloud
```

Stop syncing any file or folder by running:

```sh
$ nocloud <name-of-the-file-or-folder>
```

**Example** If you dont want to sync your (>200MB) *node_modules* folder:
```sh
$ nocloud node_modules
```

## Tests

- Moves to `*.nosync` and creates a symbolic link with the original name
  - Works for directories
  - Works for files


## TODO

- [ ] Add exit codes
- [ ] Undo the - removes the symbolyc link, then removes `.nosync` extension
- [ ] Check conflicts
- [x] Allow multiple arguments
- [ ] Allow file patterns
- [ ] TDD in bash 😅
- [ ] Add silent mode 🤫
- [ ] Create the the actual cli
- [ ] Add prettier for bash. Is this feasible? 😅
- [ ] Publish to homebrew formulas
- [x] ~~semantic-release - will it blend? 👩‍🍳~~ It did blend!


## not that FAQ

**Q: Why is there a `package.json` file in a bash project, I see no JavaScript?**

A: Why? Why not 😜! `package.json` holds the release script with `semantic-release` and some info about the project, 
like the actual version. JavaScript everywhere! Even whenever the project it's not a JS one 😎


## 🙏 Thanks

Logo inspiration:
- Sync by **ProSymbols** from the Noun Project
- Cloud by **Kumar** from the Noun Project
