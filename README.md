# Raycast Script Commands

This repository contains some script commands for use with Raycast.

## Installation

1) Copy this repository locally
    * [Download a zip file](https://github.com/replete/raycast-script-commands/archive/refs/heads/main.zip) or
    `git clone git@github.com:replete/raycast-script-commands.git`
2) Add the new script commands directory to RayCast
    * Activate Raycast, open `Extensions`
    * Search for and select `Script Commands`
    * Click `Add Directories` then select this folder
    ![Raycast Add directories screenshot](images/install-add-directory.png)
3) Add aliases for each script
    * In Raycast, search Extensions for `Replete`
    * Disable scripts you don't want to use
    * Enter aliases for the script commands you want to use
    ![Raycast Add directories screenshot](images/install-aliases.png)
4) Edit variables inside `config.sh` accordingly

## Script Commands

### Obsidian

* **Obsidian: Open Vault** `ov vaultname`
* **Obsidian: Create Entry** `oc` `vaultname`  `entry text (optional)` `title text (optional)` 
    *If file already exists, entry text is appended after a new line.*
    *After saving, entry is opened in Obsidian.*
* **Obsidian: Create Entry (silent)** `ocs` `vaultname`  `entry text` `title text (optional)` 
    *If file already exists, entry text is appended after a new line.* 
    *Entry is saved silently.*
* **Obsidian: Create Daily Note** `od` `entry text`
    *If file already exists, entry text is appended after a new line.* 
    *After saving, entry is opened in Obsidian.*
* **Obsidian: Create Daily Note (silent)** `ods` `entry text (optional)`
    *If file already exists, entry text is appended after a new line. 
    *Entry is saved silently.*
* **Obsidian: Create Daily Note in Vault** `odv` `vaultname` `entry text (optional)`
    *If file already exists, entry text is appended after a new line.* 
    *After saving, entry is opened in Obsidian.*
* **Obsidian: Create Daily Note in Vault (silent)** `odvs` `vaultname` `entry text`
    *If file already exists, entry text is appended after a new line.* 
    *Entry is saved silently.*