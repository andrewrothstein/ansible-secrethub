andrewrothstein.secrethub
=========
![Build Status](https://github.com/andrewrothstein/ansible-secrethub/actions/workflows/build.yml/badge.svg)

Installs the [secrethub](https://secrethub.io/) cli.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.secrethub
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
