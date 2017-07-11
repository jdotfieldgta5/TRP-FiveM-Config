# bs-perms-json

## About  
This is a resource that feeds admins into bs-perms via json files.

## Server Owners

### Requirements
- bs-perms

### Installation
- copy/move ``bs-perms-json`` to ``<server>/resources/``
- add to ``<server>/citmp-server.yml``

### RCON Commands
``perms-json``
* ``perms-json admin``  
  * ``perms-json admin add <alias> <authType> <authString> [password]``
  * ``perms-json admin remove <alias>``
  * ``perms-json admin set <alias> <value> <key>``
* ``perms-json group``
  * ``perms-json group add <name> <flags> <immunity>``
  * ``perms-json group remove <name>``
* ``perms-json override``
  * ``perms-json override add <commandString> <type> <flag>``
  * ``perms-json override remove <commandString>``

### Admin Table
* authType -  ``login / steam / ip``  
  * This chooses our method of authentication.
If you specify an auth type of ``login`` then you will need to run the ``/perms login <username> <pass>`` to be authenticated.
  * If you use ``steam`` or ``ip`` then you will be authenticated when you join the server.  
* authString - ``<username> / < 64 steam> / <ip>``
  * This depends on the authType
* alias ``<alias>``
  * this is for convenience
* password ``<password>``
  * this only needs set if using the ``login`` authType
  * this is a brcypt hashed password
* flags ``<flags>`` Defaults to ''
  * these are the flags you want the user to have
* immunity ``<immunity>`` Defaults to 0
  * this is the immunity you want this user to have
* Group ``<group name>`` Optional
  * this is the name of the group you want the user to inherit flags and immunity from.

## Immunity (copy/pasted from sourcemod docs)
Immunity is a flexible system based on immunity levels. Every admin can have an arbitrary immunity value assigned to them. Whether an admin can target another admin depends on who has a higher immunity value.

For example, say Admin #1 has an immunity level of "3" and Admin #2 has an immunity level of "10." Admin #2 can target Admin #1, but Admin #1 cannot target Admin #2. The numbers are completely arbitrary, and they can be any number equal to or higher than 0. Note that 0 always implies no immunity.

Admins with the same immunity value can target each other.

Admins with the z flag are not subject to immunity checks. This means they can always target anyone.


**Example**
```json
[
  {
    "authType": "login",
    "authString": "bushy",
    "alias": "bushy_pass",
    "password": "$2a$06$a1mtR17lZ1T1AwJTOo/Br.kCkrQ/Mk5e1C9/izoE.DA6kLJOThHWC",
    "flags": "z",
    "immunity": 10,
    "Group": "generic"
  },
  {
    "authType": "steam",
    "authString": "76561197972581267",
    "alias": "steam_id_test",
    "flags": "z",
    "immunity": 10
  },
  {
    "authType": "ip",
    "authString": "173.19.254.110",
    "alias": "ip_test",
    "flags": "z",
    "immunity": 10
  }
]
```


### Groups
* flags ``<flags>`` Defaults to ''
  * these are the flags you want the users with this group to have
* immunity ``<immunity>`` Defaults to 0
  * this is the immunity you want users with this group to have
  * this is only applied if it is higher than the user's immunity

**Example**
```json
[
  {
    "name": "generic",
    "flags": "abc",
    "immunity": 5
  },
  {
    "name": "mod",
    "flags": "cdef",
    "immunity": 4
  }
]
```

### Overrides  
Overrides let you ignore what flag a command was made with and set your own flag.  This is useful for making sure you have control of the plugins used in your server.  You can set to match a command exactly or you can match the beginning of a command.
* type ``full / `prefix``
  * full is a complete string match.  prefix only matches the beginning of the command with your string.
* commandString <command>
  * the command to Overrides
* flag ``flag``
  * the flag you want to require the command to have  


 **Example**
```json
[
  {
    "type": "full",
    "commandString": "testcmd",
    "flag": "h"
  },
  {
    "type": "prefix",
    "commandString": "precmd",
    "flag": "h"
  }
]
```


### Related Gits
[bs-admin](https://github.com/busheezy/bs-admin)  
[bs-perms](https://github.com/busheezy/bs-perms)   
[bs-perms-api](https://github.com/busheezy/bs-perms-api)  
[node-bs-perms-api](https://github.com/busheezy/node-bs-perms-api)  
