# Raycast Script Commands

This repository contains some script commands for use with Raycast.


## Script Commands

### Obsidian

After adding to Raycast, set up aliases `ov,oc,od`..

* Open Vault `ov vaultname`
* Create Entry `oc vaultname content title*`
* Create Daily Note `od vaultname content*`

#### TODO:
* [x] Daily Note script command, default title formatted YYYY-MM-DD e.g `od vaultname content` 
* [ ] Make vaultname optional and read default value (for single vault people) from disk
* [ ] Make single-vault versions, which would require `.template` editing for the default vault or reading from external file