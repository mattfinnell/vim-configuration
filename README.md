# Vim Configuration

- Package management using [`vim-plug`](https://github.com/junegunn/vim-plug).
- `vimrc` automatically installs `vim-plug` and all plugins *if (and only if)* such are not found.
- `vimrc` serves 3 purposes
  - Declare plugins for `vim-plug`
  - Set common configuration assumed by (almost) all file types
  - Nothing else.
- Any language specific configuration that deviates from the defaults must be set in `ftplugin/{{lang}}.vim`
- Plugins are expected to work out of the box with no configuration. Any configuration must be minimal, otherwise the plugin is considered trash.

### Tricky Spot - YCM
[`YouCompleteMe`](https://github.com/Valloric/YouCompleteMe) is a crazy beast and needs to compile things.

```
cd ~/.vim/

brew install cmake
brew install npm

rm -rf /usr/local/lib/node_modules/

./Plugged/YouCompleteMe/install.py --clang-completer --js-completer
```

Removal of the global `node_modules` directory is explained by [this issue](https://github.com/npm/npm/issues/16542).

[Read the YCM manual](https://github.com/Valloric/YouCompleteMe#installation) for for integration with other languages such as C# and Rust.

### Tricky Spot - Instant Markdown

The markdown plugin needs a `node.js` server to map all changes to the browser.
```
yarn global add instant-markdown-d
```
