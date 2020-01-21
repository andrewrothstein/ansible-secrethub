andrewrothstein.secrethub
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-secrethub.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-secrethub)

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
