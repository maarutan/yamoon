<h1 align="center">yamoon</h1>

<table>
  <tr>
    <td><img src=".image/logo.png" width="200"/></td>
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

`ouch` — a simple yet powerful tool for compressing and extracting archives, with undo support.
`mediainfo` — retrieves detailed metadata about multimedia files such as videos and audio, sometimes including images.
`trash-cli` — command-line interface to the trash system, enabling file recovery and undoing deletions.
`git` — version control system for tracking changes and managing source code repositories.
`xclip / xsel` — tools to interact with the clipboard in X11 environments (Note: ClipBoard is not an Arch package).
`wl-clipboard` — clipboard utilities designed specifically for Wayland sessions.
`eza` — an enhanced modern replacement for ls, featuring file tree views, colors, and icons.
`resvg` — a fast and efficient tool to convert SVG files into raster image formats.
`pdftoppm` — part of poppler-utils, used to convert PDF pages into images.
`jq` — a lightweight and flexible command-line JSON processor.
`fd` — a simple, fast, and user-friendly alternative to find for locating files and directories.
`p7zip` — Arch Linux package providing 7z archiving tools for compressing and extracting files.

---

## Example

![image](.image/yazi.png)

## Installation

> ( Yamoon its just build yazi plugs ) requires [Yazi](https://github.com/sxyazi/yazi) to be installed on your system.

### 1. Curl install.sh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/maarutan/yamoon/main/install.sh)"
```

### 2. Clone the repository

```bash
mv ~/.config/yazi ~/.config/yazi_"$(date +"%Y-%m-%d-%s")".bak
git clone https://github.com/maarutan/yamoon.git ~/.config/yazi/
sh ~/.config/yazi/install.sh --nobackup
```
