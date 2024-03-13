# Neovim Configuration

## Setup

### Linux/Unix

1. Install neovim from your distros repository:

    Ubuntu/Debian:
    `sudo apt-get install neovim`

2. Create the neovim config directory
    
    `mkdir ~/.config/nvim`

3. Clone this repository and copy the files into the config directory.

4. Run neovim and verify configuration loads in properly. You will still need to install any LSPs manually.


### Windows

1. Use a package manager such as choco to install neovim in Powershell (as Admin)
    
    `choco install neovim`

2. Copy the contents of this repo into `C:/Users/Your-Username/AppData/Local/nvim/`

3. Run `nvim .` and verify configuration loads in properly. You will still need to install any LSPs manaully.
