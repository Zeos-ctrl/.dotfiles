# .dotfiles

Collection of my dotfiles for use in linux, set up with nvim as an editor,
oh-my-zsh, wallpapers and more. Use whatever terminal you want and maybe
nitrogen for the wallpapers.

## Installs

Your gunna need to install Packer, instructions can be found here,
https://github.com/wbthomason/packer.nvim

Oh-my-zsh can be found here, https://github.com/ohmyzsh/ohmyzsh

## Nvim Keymaps

Tables of keymaps for different neovim modules. My leader key is space because 
im unoriginal. Also for anyone wondering, \<C> is ctrl.

---

### Harpoon

For quick file nav

| Keymap | Command |
| --- | --- |
| \<leader>a | mark.add_file |
| \<C-e> | ui.toggle_quick_menu |
| \<C-1> | ui.nav_file(1) |
| \<C-2> | ui.nav_file(2) |
| \<C-3> | ui.nav_file(3) |
| \<C-4> | ui.nav_file(4) |

---

### LSP

| Keymap | Command |
| --- | --- |
| \<C-p> | select_prev_item |
| \<C-n> | select_next_item |
| \<C-y> | confirm |
| \<C-space> | complete |
| gd | Get Definitions |
| K | hover |
| \<leader>vws | workspace symbol |
| \<leader>vd | open_float |
| [d | diagnostic.goto_next |
| ]d | diagnostic.goto_prev |
| \<leader>vca | view code_action |
| \<leader>vrr | view references |
| \<leader>vrn | rename |
| \<C-h> | signiture help |

---

### Telescope

Fuzzy finder

| Keymap | Command |
| --- | --- |
| \<leader>ff | find_files |
| \<leader>fg | live_grep |
| \<leader>fb | buffers |
| \<leader>fh | help_tags |

---

### Undotree

| Keymap | Command |
| --- | --- |
| \<leader>u | UndotreeToggle |

---

### Remap

Misc remaps and shortcuts

| Keymap | Command |
| --- | --- |
| \<leader>m | :Ex |
| \<leader>T | inlay hints |
| \<leader>t | inlay hints |
| \<leader>p | LatexPreviewToggle |
| \<leader>[ | PrevPreviewMode |
| \<leader>] | NextPreviewMode |

---
