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

`ouch` — a simple yet powerful tool for compressing and extracting archives, with undo support. <br />
`mediainfo` — retrieves detailed metadata about multimedia files such as videos and audio, sometimes including images. <br />
`trash-cli` — command-line interface to the trash system, enabling file recovery and undoing deletions. <br />
`git` — version control system for tracking changes and managing source code repositories. <br />
`xclip / xsel` — tools to interact with the clipboard in X11 environments (Note: ClipBoard is not an Arch package). <br />
`wl-clipboard` — clipboard utilities designed specifically for Wayland sessions. <br />
`eza` — an enhanced modern replacement for ls, featuring file tree views, colors, and icons. <br />
`resvg` — a fast and efficient tool to convert SVG files into raster image formats. <br />
`pdftoppm` — part of poppler-utils, used to convert PDF pages into images. <br />
`jq` — a lightweight and flexible command-line JSON processor. <br />
`fd` — a simple, fast, and user-friendly alternative to find for locating files and directories. <br />
`p7zip` — Arch Linux package providing 7z archiving tools for compressing and extracting files. <br />

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
