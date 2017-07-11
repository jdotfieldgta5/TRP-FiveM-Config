# bs-admin
This is an admin plugin that uses bs-perms.  A lot of bs-admin is copy/pasted from es_admin by Kanersps so thanks to him.  The plugin provides basic admin functionality you would expect.
## Server Owners

### Requirements
- [bs-perms](https://github.com/busheezy/bs-perms)

### Installation
- copy/move ``bs-admin`` to ``<server>/resources/``
- add to ``<server>/citmp-server.yml``
- edit config.json

### Flags
These flags are either already used by bs-perms plugins or will be soon.

Flag | Usage
------------- | -------------
\* | Everyone  
A | Reserved Slot  
B | Generic Admin  
C | Kick  
D | Ban  
E | Unban  
F | Slay  
G | Change Map  
H | Change Gametype  
I | Chat Perms  
J | Start Votes  
K | Set a password  
L | RCON  
M | No Clip  
N | Spawn Vehicles  
Z | ALL FLAGS

## Admins

### Commands  
- ``admin <option>``  
  - ``admin reload`` reloads the bs-admin config and bans
- ``announce <message>`` send a message to everyone
- ``car <car model>`` spawns a car and warps into it
- ``report <message>`` sends a message to all online admins
- ``pos`` displays coords to you
- ``savepos <note>`` saves coords with a note
- ``noclip`` toggles noclip
- ``kick <id> <reason>`` kicks player with reason
- ``ban <id> <duration> <reason>``  
  - duration can be hours or days at the moment.  (12h/4d)
- ``freeze <id>`` freezes a player
- ``unfreeze <id>`` unfreezes a player
- ``bring <id>`` teleports player to you
- ``tp <id>`` teleports you to player
- ``slap <id>`` slaps player
- ``die`` kills self
- ``slay <id>`` kills player

### RCON Commands
- ``announce <message>`` send a message to everyone
- ``kick <id> <reason>`` kicks player with reason
- ``ban <id> <duration> <reason>``  
  - duration can be hours or days at the moment.  (12h/4d)
- ``freeze <id>`` freezes a player
- ``unfreeze <id>`` unfreezes a player
- ``slap <id>`` slaps player
- ``slay <id>`` kills player


### Related Gits
[bs-perms](https://github.com/busheezy/bs-perms)  
[bs-perms-json](https://github.com/busheezy/bs-perms-json)  
[bs-perms-api](https://github.com/busheezy/bs-perms-api)  
[node-bs-perms-api](https://github.com/busheezy/node-bs-perms-api)  
