
Key Mapping Rules
=================

- Do not map keys for the sake for the mapping.
- Do not remap any vim's mappings for the sake remapping.
  - `:help map-which-keys`
  - `:help map-special-chars`
  - `:help key-notation`
  - `:help map-recursive`
  - `:help map`
  - `:help noremap`
  - `:help recursive_mapping`
  - `:help map-modes`
- The most frequent commands must have the easiest mappings.
- The least frequest commands can have slightly complex mappings.

So basically, improve the workflow but don’t exaggerate. First, create mappings only for commands that are
slowing your workflow, because either the key you need very often, is hard to reach quicky, or the functionality
requires lots of keys. After being more used to it, or when you start to create some vim scripts
and plugins, you'll probably dive a little bit deeper on mappings.

Key Mappings
============

- `' '` is defined to be `<leader>`
- Navigations/Splits/Tabs
  - `<C-h>`, `<C-j>`, <C-k>` and `<C-l>` to switch between splits, conforming to the `hjkl` standard directions
  - `>` and `<` to switch between tabs
  - `<C-z>` and `<C-x>` to resize vertical splits
- Edit
  - `oo` to insert one empty line after the current one without entering into the insert mode.
    - To insert 5 lines, press `5oo` lines
    - Likewise, `OO` to insert line before the current one
- `<leader>` followed by:
  - `w` to remove trailing whitespace
  - `n` to toggle relativenumber
  - `s` to `:wq`
  - `<space>` to no highlights
  - `<tab>` to jump to matching parens, etc (works in both `normal` and `visual` mode).
  - `ev` to open `.vimrc` in vertical split
- Plugin specifics
  - FZF
    - `<C-p>` to search files tracked by git
    - `<C-b>` to search buffers
    - `<C-f>` to search history
    - `<C-s>` to search lines in buffers
  - NerdTree
    - `<leader>f` to open/close nerdtree split
  - UndoTree
    - `<leader>u` to open undo tree

