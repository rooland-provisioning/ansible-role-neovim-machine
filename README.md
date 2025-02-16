# neovim-machine

This role

- installs
  - neovim
  - a gui for it
  - font which plays nice with plugins
- configures plugins for
  - status line
  - file sidebar
  - code
    - search
    - completion
    - quick documentation reading
    - style check (rubocop lsp doesn't work in vimr)
  - a colorscheme for code and status line


## Example

### Playbook

    ---
    - hosts: localhost
      roles:
        - role: neovim-machine
          tags:
            - neovim
            - editor

### [requirements file](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html#installing-multiple-roles-from-a-file)

    ---
    - name:     neovim-machine
      src:      rooland-provisioning.neovim-machine
      version:  v0.0.1

License
-------

BSD

Author Information
------------------

Mailo Světel <mailo+neovim-machine@rooland.cz>, https://mailo.svetel.cz
