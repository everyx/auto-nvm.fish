# auto-nvm

Automatically activate/deactivate node virtual environments by `nvm use` in fish when directory change.

Each time the directory is switched, it will sequentially attempt to activate the virtual Node environment using the `nvm use` command. This will reference the configuration found in the `.nvmrc` or `.node-version` files in the current folder or the root directory of the git repository.

## Installation

- Using fisher (Recommended):

    ```fish
    fisher install everyx/auto-nvm.fish
    ```

- Manual install

    Copy `conf.d/auto-nvm.fish` into your `conf.d` directory (usually `~/.config/fish/conf.d`)
