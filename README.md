<h1><p align="center">Roblox-TS Skeleton</p></h1>

This is a template skeleton for a [roblox-ts](https://roblox-ts.github.io) based game that is expected to contain multiple places.

Designed for a native Windows environment. WSL/macOS support is due soon.

**Note:** We're assuming that you're using [Visual Studio Code](https://code.visualstudio.com).

## Starting

- Make sure to have [NodeJS](https://nodejs.org) and `npm` installed in your system;


- [Generate a new repository from this template](https://github.com/ddavness/roblox-ts-skeleton/generate);

- Clone your generated repository to your workspace;

- Change directory into the `Places` folder and run `npm install`.

## Usage Instructions

There are two folders in this repository:

- `Assets` - this is the folder where you'll place miscellaneous content (e.g. models (`.obj`, `.fbx`), music (`.wav`, `.mp4`), UI elements (`.png`), etc.) and respective sources (`.blend`, `.ai`, `.svg`, etc.);

- `Places` - this is the folder where your game code will be stored.

### The `Places` folder

The `Places` folder is where your code will belong to. It initially follows this structure:

```
Places
│   .eslintrc
│   init.cmd
│   link.cmd
│   package.json
│
├───.skeleton
│   │   default.project.json
│   │   tsconfig.json
│   │
│   ├───lua
│   │   ├───client
│   │   ├───lib
│   │   ├───network
│   │   └───server
│   │
│   └───src
│       ├───client
│       ├───lib
│       ├───network
│       └───server
│
├───global
│   ├───lua
│   └───src
└───include
```

Empty folders contain a `.gitkeep` file inside, so that Git is able to track the folder.

`.skeleton` is a folder that contains a structure of a place. *Don't use this folder directly!*

`global` will contain code that is shared across places.

`include` contains code that is shipped with roblox-ts itself and the community-provided [npm modules](https://www.npmjs.com/org/rbxts). This folder is also shared across places.

To create a place, run `init.cmd <name>` in your command line. It will:

1. Copy the contents of `.skeleton` to the new folder;

2. Create directory junctions so that you can access the `global` folder.

### Moving the repository between devices

If you're `git clone`'ing your repository, the junctions will not be preserved. You can run `link.cmd <name-of-folder>` to restore them.

## Considerations

- Since this is designed for roblox-ts projects, all lua code is essentially `.gitignore`d.

- When compiling a place, don't forget to mention the location of the include folder: `rbxtsc -i ../include` or `rbxtsc -w -i ../include`.

- The repository has extension recommendations that you can use to improve your coding experience;

- The `Places/.eslintrc` file contains rules for code linting and styling. You should review them before writing any code!
