# bs-perms

## About  
This is a resource that manages whether people are able to run certain commands via a flag system.  The flag system is inspired by sourcemod.  This requires bs-perms-json or bs-perms-api to have admin, group, and override data fed into it.  It is optional of what you want to use.  Both bs-perms-json and bs-perms-api will work together.  A flag can be any single character.  

## Server Owners

### Requirements
[bs-perms-json](https://github.com/busheezy/bs-perms-json)  
and/or  
[bs-perms-api](https://github.com/busheezy/bs-perms-api)  

### Installation
 - copy/move ``bs-perms`` to ``<server>/resources/``
 - add to ``<server>/citmp-server.yml``
 - install bs-perms-api or bs-perms-json

## API  

### addCommand(command table)
adds commands to chat processor
```Lua
local API
TriggerEvent('bs-perms:getAPI',
  function(api)
    API = api
  end
)
local addCommand = API.addCommand
```
This gives us access to the permissions API for the rest of the file.  Thanks to tellurium for showing me this.  It makes the syntax way cleaner.
```Lua
API.addCommand({
  command = 'example',
  flag = 'b',
  target = true,
  callback = function(who, args, auth, targetAuth)
    -- targetAuth is an auth table
    -- targetAuth.pid = player's id
  end
})
```
By passing target true we tell the chat processor to use a target convenience check.  The chat processor will look at the second arg and assume it is a target id.  If you want to use an arg other than the second arg then send the number arg you want. ``target = 3``  The code in the call back is only ran if the immunity checks pass.
```Lua
API.addCommand({
  command = 'example',
  flag = 'b',
  callback = function(who, args, auth)
    ...
  end
})
```
This is a normal command that requires a flag.  The code in the callback is only ran if it passes our default check.
```Lua
API.addCommand({
  command = 'test',
  flag = '*',
  pre = function(source, auth, args, cmd, next)
    -- do checks
    -- pass variables to our command
    next({
      the = "test"
    })
  end,
  callback = function(who, args, auth, pass)
    print(pass.the)
  end
})
```
Here is an example of providing our own checks.  This overrides our target or default checks and allows you to do any checks you want.  The call back is only ran if you call ``next()``  Feel free to pass data, including a table, through ``next({})``.  Anything called in next will be given to you as the fourth paremeter in the callback.  
  ```Lua
  API.addCommand({
    command = 'example',
    flag = 'b',
    argFlags = {
      test = 'c'
    },
    callback = function(who, args, auth)
      ...
    end
  })
  ```
  This is a normal command that requires a flag.  This has argFlags which is a convenience for having permission checks on your commands args.  For example, you can have '``/test bird'`` and ``/test rabbit``.  bird and rabbit can both of their own flags individual from the main flag.

### getAdmins()
returns a list of the cached admins  
Example:  
```Lua
local admins = API.getAdmins()
print('There are '..#admins..' entries in the admin cache.')
```
Example Output:  
``There are 10 entries in the admin cache.``


### getGroups()
returns a list of the cached groups  
Example:  
```Lua
local groups = API.getGroups()
print('There are '..#groups..' entries in the group cache.')
```
Example Output:  
``There are 10 entries in the groups cache.``


### getOverrides()
returns a list of the cached overrides  
Example:  
```Lua
local overrides = API.getOverrides()
print('There are '..#overrides..' entries in the overrides cache.')
```
Example Output:  
``There are 10 entries in the overrides cache.``


### getSteamFromId(Player ID)
returns a 64 bit steam id  
Example:
```Lua
local steam = API.getSteamFromId(1)
print(steam)
```
Example Output:  
``76561197972581267``


### hasFlag(flags, flag)
returns a boolean  
Example:
```Lua
local has = API.hasFlag('abc', 'b')
print(has)
```
Example Output:  
``true``


Example:
```Lua
local has = API.hasFlag('abc', 'z')
print(has)
```
Example Output:  
``false``


### getAuthedAdmin(Player ID)
returns a player auth table  
Example:
```Lua
local auth = API.getAuthedAdmin(1)
-- auth is a user table
print(auth.pid)
```
Example Output:  
``1``


### playerHasFlag(Player ID, flag)
returns a boolean  
Example:
```Lua
local has = API.playerHasFlag(1, 'b')
print(has)
```
Example Output:  
``true``


### playerCanTargetPlayer(Player ID, Player ID)
returns a boolean  
Example:
```Lua
local can = API.playerCanTargetPlayer(1, 2)
print(can)
```
Example Output:  
``true``


### loopThroughAuthed(callback<player auth>)
returns nothing but the callback will be called for every player  
Example:
```Lua
local can = API.loopThroughAuthed(
  function(auth){
    print(auth.pid)
  }
)
```
Example Output:  
``1``  
``2``  
``3``


### User's Auth table
```Lua
{
  pid = 1,
  alias = 'Bush',
  flags = 'abc',
  immunity = 10,
  Group = 'general'
}
```

## Flags
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

## Immunity (copy/pasted from sourcemod docs)
Immunity is a flexible system based on immunity levels. Every admin can have an arbitrary immunity value assigned to them. Whether an admin can target another admin depends on who has a higher immunity value.

For example, say Admin #1 has an immunity level of "3" and Admin #2 has an immunity level of "10." Admin #2 can target Admin #1, but Admin #1 cannot target Admin #2. The numbers are completely arbitrary, and they can be any number equal to or higher than 0. Note that 0 always implies no immunity.

Admins with the same immunity value can target each other.

Admins with the z flag are not subject to immunity checks. This means they can always target anyone.

## Related Gits
[bs-admin](https://github.com/busheezy/bs-admin)   
[bs-perms-json](https://github.com/busheezy/bs-perms-json)  
[bs-perms-api](https://github.com/busheezy/bs-perms-api)  
[node-bs-perms-api](https://github.com/busheezy/node-bs-perms-api)
