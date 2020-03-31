# Linux

### Necessities
*  External clipboard: `sudo apt install xclip`
*  File transfer: `sudo apt install rsync`
*  Document viewer: `sudo apt install evince`. This is required for `simple_ConTeXt` to show the PDF after building.
*  Shell: `zsh`
   ```sh
   sudo apt install zsh
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   chsh -s $(which zsh)
   ```
*  `snapd` did not work for me
*  `docker`: the official instructions [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/) gave me the error
  ```sh
  E: The repository 'https://download.docker.com/linux/ubuntu buster Release' does not have a Release file.
  N: Updating from such a repository cannot be done securely, and is therefore disabled by default.
  ```
*  Editor: [`micro`](https://micro-editor.github.io/)
   *  Install using `curl https://getmic.ro | zsh`. _(`snap install micro --classic` did not work for me.)_
   *  Open `micro`, type `Ctrl+E`, and type `set colorscheme simple`
   *  Set default editor: open `~/.zshrc` and edit the following lines to look like this. _(Not sure if this works.)_
   ```sh
   # Preferred editor for local and remote sessions
   if [[ -n $SSH_CONNECTION ]]; then
     export EDITOR=nano
     export VISUAL=nano
   else
     export EDITOR=micro
     export VISUAL=micro
   fi
   ```
*  `Sublime Text 3`
   *  Install from [here](https://www.sublimetext.com/docs/3/linux_repositories.html).
   *  Install the following packages:
      *  `Package Control`
      *  `Terminus`
      *  `GitSavvy`
      *  `Markdown Editing`
      *  `BracketHighlighter`
      *  `simple_ConTeXt`
      *  `UnicodeMath`
      *  `UnicodeCompletion`
      *  `Unicode Character Insert`
      *  `A File Icon`
      *  `Base16 Color Schemes`
   *  `Settings - Syntax Specific` for `Markdown`: `"tab_size": 3`
*  `Visual Studio Code`
   *  Install from [here](https://code.visualstudio.com/docs/setup/linux). The Snap package did not work for me. Install from `.deb` worked.
.*  [`ConTeXt LMTK`](https://wiki.contextgarden.net/ConTeXt_LMTX): 'tikz' did not work for me, so sticking to `Mark IV`
