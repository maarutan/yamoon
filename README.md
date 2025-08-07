<h1 align="center">yamoon</h1>

<table>
  <tr>
    <td><img width="249" height="249" alt="Image" src="https://github.com/user-attachments/assets/74f1be51-e0a9-421b-b8cd-0beed7ebd575" /></td>
    <td>
      <strong>Yamoon</strong> — Cunstom Build <a href="https://github.com/sxyazi/yazi">Yazi</a><br/>
      build includes many popular plugins <br/>
      and a nice configuration structure for the gas  <br/>
      which gives you an easy way to interact with the configuration. 
    </td>
  </tr>
</table>

#### links

[~> Installation](#installation) <br />
[~> Example](#example) <br />
[~> Dependencies](#Dependencies) <br />
<br />
[~> plugins](package.toml)<br />

---

## Dependencies

- `ouch` — for compressing and extracting files.
- `mediainfo` — for retrieving information about multimedia files (images, videos), including their preview.
- `trash-cli` — for restoring deleted files or directories, allowing undo of deletions.
- `git` — for viewing the state of a Git repository and managing versions.
- `xclip` / `xsel` — for working with the clipboard in X11 (Note: `ClipBoard` is not a valid package).
- `wl-clipboard` — for working with the clipboard in Wayland.
- `eza` — for displaying the file structure as a tree, an enhanced version of the `ls` command.
- `resvg` — for converting SVG files to other image formats.
- `pdftoppm` — for converting PDF files to images (part of `poppler-utils`).
- `jq` — for parsing and manipulating JSON data.
- `fd` — for finding files and directories (a faster alternative to `find`).
- `p7zip` — for compressing and extracting `.7z` and other archive formats.

---

## Example

<img width="1662" height="881" alt="Image" src="https://github.com/user-attachments/assets/ebea2fc2-2a0e-4e1a-9472-08ab1ddf59a5" />

## Installation

> ( Yamoon its just build yazi plugs ) requires [Yazi](https://github.com/sxyazi/yazi) to be installed on your system.

### 1. Curl install.sh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/maarutan/yamoon/main/install.sh)"
```

### 2. Clone the repository

```bash
mv ~/.config/yazi ~/.config/yazi_"$(date +"%Y-%m-%d-%s")".bak
git --depth 1 clone https://github.com/maarutan/yamoon.git ~/.config/yazi/
sh ~/.config/yazi/install.sh --nobackup
```
