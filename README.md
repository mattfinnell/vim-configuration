# Vim Configuration

- Package management using [`vim-plug`](https://github.com/junegunn/vim-plug).
- `vimrc` automattically installs `vim-plug` and all plugins *if (and only if)* such are not found.
- `vimrc` serves 3 purposes
  - Declare plugins for `vim-plug`
  - Set default configuration assumed by (almost) all file types
  - Nothing else.
- Any language specific configuration that deviates from the defaults must be set in `ftplugin/{{lang}}.vim`
- Plugins are expected to work out of the box with no configuration. Any configuration must be minimal, otherwise the plugin is considered trash.


## Configuration Practices (By Example)

### Sensible Indentation - Depth

All languages use 4 space indentation
```vim
" vimrc
set shiftwidth=4
set tabstop=4
```

Except for languages built by idiots (*cough* javascript *cough*) where [deep nesting](http://callbackhell.com/) is almost considered an industry standard (These languages are almost always front-end). HTML and config files are exempt of this ridicule.

```vim
" ftplugin/javascript.vim
set shiftwidth=2
set tabstop=2
```

### Sensible Indentation - Tab Expansion
** *psst*, github will expand tabs to 8 spaces by default

![[*Everyone beating up Github*]](https://i.imgur.com/80gDSHh.png)

Expand tabs before github does.
```vim
" vimrc
set expandtab
set smarttab
```

## Annoying things to Fix

- `press ENTER or type command to continue` BS
