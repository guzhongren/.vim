
# .vim

## 效果

![vim](./vim.png)

## 安装
Optional: replace `git@gihtub.com:` with `hppts://github.com/` for `.gitmodules` file content
```shell
git clone --depth=1 --recursive git@github.com:guzhongren/.vim.git ~/.vim
...
git submodule init
git submodule update --recursive --remote --depth=1
cd ~/.vim/pack/default/start/coc.nvim
npm ci
# Install coc plugins
vim xxx
```

## 添加

```shell
git submodule add https://github.com/w0rp/ale.git ~/.vim/pack/default/start/ale
...
# 或者
git submodule add git@github.com:lilydjwg/fcitx.vim.git ~/.vim/pack/default/start/citx.vim
...
```

## 更新

```shell
git submodule update --recursive --remote --depth=1
...
```

## 更新 Coc

```shell
vim xx
:CocUpdate
```
