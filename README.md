# requirements

- Install Plug: https://github.com/junegunn/vim-plug
- MacOS Repeat Key Speed: https://apple.stackexchange.com/questions/10467/how-to-increase-keyboard-key-repeat-rate-on-os-x

```
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
```

## Delete Key now working
```
Go to Preferences > Profiles > Keys and load the default preset Natural Text Editing and delete all entries that are about delete and delete behaviour. After that it works as expected.
```

# install

- `:PlugInstall`
- `npm install -g typescript typescript-language-server`
- `npm install -g vscode-css-languageserver-bin` 
- `npm install -g vim-language-server`
