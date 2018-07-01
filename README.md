<p align="center">
  <img width="300" align="center" alt="nocloud" src="https://user-images.githubusercontent.com/6654199/42130706-5c3926e6-7cba-11e8-9274-4e5131ed755e.png">
</p>

# nocloud 🔄🚫☁️
iCloud nosync cli

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
- [ ] semantic-release - will it blend? 👩‍🍳


## 🙏 Thanks

Logo inspiration:
- Sync by **ProSymbols** from the Noun Project
- Cloud by **Kumar** from the Noun Project
