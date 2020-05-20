# Linux

### Necessities
*  External clipboard: `sudo apt install xclip`
*  File transfer: `sudo apt install rsync`
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

### Editors
*  [`micro`](https://micro-editor.github.io/)
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
      *  `Terminus` with theme `brackets-light`
      *  `SendCode`
      *  `GitSavvy`
      *  `Markdown Editing`
      *  `BracketHighlighter`
      *  [`simple_ConTeXt`](https://packagecontrol.io/packages/simple_ConTeXt)
      *  `UnicodeMath`
      *  `UnicodeCompletion`
      *  `Unicode Character Insert`
      *  `A File Icon`
      *  `Base16 Color Schemes` with color-scheme `base16-one-light`
   *  `Settings - Syntax Specific` for `Markdown`: `"tab_size": 3`
*  `Visual Studio Code`
   *  Install from [here](https://code.visualstudio.com/docs/setup/linux). The Snap package did not work for me. Install from `.deb` worked.

### Computation
*  [`miniconda`](https://docs.conda.io/en/latest/miniconda.html)
*  [`Jupyter Lab`](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html)
*  [`Julia`](https://julialang.org/downloads/): Extract to in `/opt/julia`.
*  In `julia`, install the following (`using Pkg; Pkg.add([pkgname])`).
   *  `IJulia.jl`
   *  `Plots.jl`
   *  `DifferentialEquations.jl`

### Documentation
*  Websites
   *  Add the [`conda-forge`](https://conda-forge.org/) repository (`conda config --add channels conda-forge`).
   *  [`MkDocs`](https://www.mkdocs.org/): `conda install mkdocs`.
   *  [`Material for MkDocs`](https://squidfunk.github.io/mkdocs-material/): `conda install mkdocs-material`.
   *  If you get the error `pkg_resources.DistributionNotFound: The 'mkdocs-material-extensions>=1.0' distribution was not found and is required by the application`, then install [`MkDocs Material Extensions`](https://pypi.org/project/mkdocs-material-extensions/) using `pip` (`pip install mkdocs-material-extensions`) since there is not conda package for it yet (check!).
   *  For math display, I need to check out [this](https://facelessuser.github.io/MarkdownPreview/extras/), [`Arithmatex`](https://facelessuser.github.io/pymdown-extensions/extensions/arithmatex/) and `katex`.
   *  Install [`KaTeX`](https://katex.org/) using `sudo npm install -g katex` (the `yarn` installer did not work.
   *  See [`markdown-katex`](https://pypi.org/project/markdown-katex/) also. It is automatically installed by `conda`.
   *  See also https://facelessuser.github.io/MarkdownPreview/extras/#katex-support.
*  TeX
   *  [`ConTeXt LMTK`](https://wiki.contextgarden.net/ConTeXt_LMTX): `tikz` did not work for me, so sticking to [`ConTeXt Mark VI`](https://wiki.contextgarden.net/Mark_IV#Mark_VI).
   *  Document viewer: `sudo apt install evince`. This is required for `simple_ConTeXt` to automatically show the PDF after building.
