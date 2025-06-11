# 🧠 Practical Vim + Neovim Cheat Sheet (Essential Shortcuts)
---
## 🧭 Movement

| Mode   | Keys               | Description                            |
| ------ | ------------------ | -------------------------------------- |
| Normal | `h`, `j`, `k`, `l` | Move left, down, up, right             |
| Normal | `w`, `b`, `e`      | Move to next, previous, end of word    |
| Normal | `0`, `^`, `$`      | Start of line, first char, end of line |
| Normal | `gg`, `G`          | Go to top / bottom of file             |
| Normal | `Ctrl-d`, `Ctrl-u` | Half-page scroll down / up             |

---

## 🔍 Searching

| Mode   | Keys     | Description                     |
| ------ | -------- | ------------------------------- |
| Normal | `/text`  | Search forward                  |
| Normal | `?text`  | Search backward                 |
| Normal | `n`, `N` | Next / previous search result   |
| Normal | `<Esc>`  | Clear search highlight (`:noh`) |

---

## 📄 Selection

| Mode   | Keys     | Description                        |
| ------ | -------- | ---------------------------------- |
| Normal | `v`, `V` | Visual mode (char-wise, line-wise) |
| Normal | `Ctrl-v` | Visual block mode                  |
| Visual | `o`      | Switch between ends of selection   |

---

## ✂️ Cut, Copy, Paste

| Mode   | Keys      | Description                   |
| ------ | --------- | ----------------------------- |
| Normal | `yy`, `Y` | Yank (copy) line              |
| Visual | `y`       | Yank selected text            |
| Normal | `dd`, `D` | Delete line / delete to EOL   |
| Visual | `d`       | Delete selection              |
| Normal | `p`, `P`  | Paste after / before cursor   |
| Normal | `x`       | Delete character under cursor |

---

## 🧱 Indentation

| Mode   | Keys       | Description                 |
| ------ | ---------- | --------------------------- |
| Normal | `>>`, `<<` | Indent / unindent line      |
| Visual | `>`, `<`   | Indent / unindent selection |

---

## 🪟 Window Splits

| Mode   | Keys             | Description                      |
| ------ | ---------------- | -------------------------------- |
| Normal | `:vsp`, `:sp`    | Split vertically / horizontally  |
| Normal | `Ctrl-w h/j/k/l` | Move between windows             |
| Normal | `Ctrl-h/j/k/l`   | Move between windows (custom)    |
| Normal | `Ctrl-w =`       | Equalize splits                  |
| Normal | `Ctrl-w q`       | Close current split              |
| Normal | `Ctrl-l`         | Move to right window             |
| Normal | `Ctrl-w d`       | Show diagnostics under cursor 🔧 |
| Normal | `Ctrl-w <C-d>`   | Same as above (alternative)      |

---

## 🕹️ Buffers

| Mode   | Keys        | Description                |
| ------ | ----------- | -------------------------- |
| Normal | `<Tab>`     | Next buffer                |
| Normal | `<S-Tab>`   | Previous buffer            |
| Normal | `<Space>bc` | Close current buffer       |
| Normal | `<Space>bl` | Close buffers to the left  |
| Normal | `<Space>br` | Close buffers to the right |
| Normal | `<Space>bC` | Close all except current   |
| Normal | `<Space>fb` | List buffers (Telescope)   |

---

## 💾 File & Navigation

| Mode   | Keys                  | Description                  |
| ------ | --------------------- | ---------------------------- |
| Normal | `:e <file>`           | Open file                    |
| Normal | `:w`, `:q`            | Save, quit                   |
| Normal | `:wq`, `:q!`          | Save + quit, force quit      |
| Normal | `<C-s>`               | Save file                    |
| Normal | `<C-c>`               | Copy whole file to clipboard |
| Normal | `<Space>ff`           | Find files (Telescope)       |
| Normal | `<Space>fg`           | Live grep                    |
| Normal | `<Space>fh`           | Help tags                    |
| Normal | `<Space>nf`           | Find file in NvimTree        |
| Normal | `<Space>nt` / `<C-n>` | Toggle NvimTree              |
| Normal | `<Space>nr`           | Refresh NvimTree             |
| Normal | `<Space>n`            | Toggle line numbers          |
| Normal | `<Space>rn`           | Toggle relative line numbers |

---

## ⏪ Undo / Redo

| Mode   | Keys     | Description         |
| ------ | -------- | ------------------- |
| Normal | `u`      | Undo                |
| Normal | `Ctrl-r` | Redo                |
| Normal | `.`      | Repeat last command |

---

## 🐞 Debugging (DAP)

| Mode   | Keys        | Description       |
| ------ | ----------- | ----------------- |
| Normal | `<Space>dc` | Continue          |
| Normal | `<Space>ds` | Step Over         |
| Normal | `<Space>di` | Step Into         |
| Normal | `<Space>do` | Step Out          |
| Normal | `<Space>dt` | Terminate         |
| Normal | `<Space>dr` | Toggle REPL       |
| Normal | `<Space>dP` | Pause             |
| Normal | `<Space>dl` | List breakpoints  |
| Normal | `<Space>db` | Toggle breakpoint |

---

## 🌱 Git (Neogit)

| Mode   | Keys        | Description |
| ------ | ----------- | ----------- |
| Normal | `<Space>gs` | Git status  |
| Normal | `<Space>gc` | Git commit  |
| Normal | `<Space>gp` | Git pull    |
| Normal | `<Space>gP` | Git push    |
| Normal | `<Space>gl` | Git log     |
| Normal | `<Space>gd` | Git diff    |
| Normal | `<Space>gg` | Git blame   |

---

## 🧰 LSP & Code Actions

| Mode   | Keys    | Description                  |
| ------ | ------- | ---------------------------- |
| Normal | `grn`   | Rename symbol                |
| Normal | `gra`   | Code action (current)        |
| Visual | `gra`   | Code action (selection)      |
| Normal | `grr`   | Find references              |
| Normal | `gri`   | Go to implementation         |
| Normal | `gO`    | Document symbols             |
| Insert | `<C-s>` | Show function signature help |

---

## 💬 Commenting

| Mode   | Keys  | Description              |
| ------ | ----- | ------------------------ |
| Normal | `gcc` | Toggle line comment      |
| Normal | `gc`  | Toggle comment (motion)  |
| Visual | `gc`  | Toggle comment selection |

---

## 🌐 Open Files & URIs

| Mode   | Keys | Description                   |
| ------ | ---- | ----------------------------- |
| Normal | `gx` | Open file or URL under cursor |
| Visual | `gx` | Same as above                 |

---

## 🧪 Diagnostics / Errors

| Mode   | Keys       | Description                        |
| ------ | ---------- | ---------------------------------- |
| Normal | `[d`, `]d` | Jump to previous / next diagnostic |
| Normal | `[D`, `]D` | Jump to first / last diagnostic    |
| Normal | `<C-w>d`   | Show diagnostic under cursor 🔧    |

---
