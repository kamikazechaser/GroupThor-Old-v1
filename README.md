Group Thor Bot
==============

:large_blue_diamond: A Advanced Anti Spam and Super Group Manager Bot For Telegram

[![https://telegram.me/GroupThorBot](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Group%20Thor-blue.svg)](https://telegram.me/GroupThorBot)
[![https://telegram.me/kamikazechaser](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-kamikazechaser-blue.svg)](https://telegram.me/kamikazechaser)
[![https://telegram.me/joinchat/CA8baT9XG6yGaMlGi3qj3A](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-SupportGroup-blue.svg)](https://telegram.me/joinchat/CA8baT9XG6yGaMlGi3qj3A)

### Announcement

Latest _v3.1_ Update Is Applied.

### Additional Features 

- Added Anti-Telegram Links
- Changed Command Syntax By Replacing '/' With '!'. 

### Installation

**Tested on Ubuntu 14.04, Ubuntu 15.04, Linux Mint 17.2, Raspbian**

```bash
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl
```

**We are going now to install LuaRocks and the required Lua modules**

```bash
$ wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
$ tar zxpf luarocks-2.2.2.tar.gz
$ cd luarocks-2.2.2
$ ./configure; sudo make bootstrap
$ sudo luarocks install luasocket
$ sudo luarocks install luasec
$ sudo luarocks install redis-lua
$ sudo luarocks install lua-term
$ sudo luarocks install serpent
$ sudo luarocks install dkjson
$ cd ..
```

**Clone the repository and give the permissions to start the launch script**

```bash
$ git clone https://github.com/kamikazechaser/GroupThorBot.git
$ cd GroupThorBot && sudo chmod 777 launch.sh
```

###Everyone

Command | Description 
--- | ---
!ping | check if the bot is online
!dashboard | see all the group info from private
!rules (if unlocked) | show the group rules
!about (if unlocked) | show the group description
!adminlist (if unlocked) | show the moderators of the group
@admin (if unlocked) | by reply= report the message replied to all the admins; no reply (with text)= send a feedback to all the admins
!kickme | get kicked by the bot
!faq | some useful answers to frequent quetions
!id | get the chat id, or the user id if by reply
!echo [text] | the bot will send the text back (with markdown, available only in private for non-admin users)
!info | show some useful informations about the bot
!f <feedback> | send a feedback/report a bug/ask a question to my creator.
!help | show this message.

###Mods
Command | Description
--- | ---
!kick [reply] | kick an user (it's still able to join)
!ban [reply] | ban an user (not able to join again)
!banlist | Gets the ban list
!unban [reply] | unban an user
!tempban [minutes] | Temporary ban
!kicked list | see the list of kicked users
!flood [number] | set the max number of messages allowed within 5 seconds before kick/ban
!flood [on/off] | turn the anti-flood on/off
!flood [kick/ban] | choose what to do when a user is flooding
!lang | see the supported languages
!lang [code] | change the bot language (in the group)
!kick [media type] | the bot will kick who send that media
!ban [media type] | the bot will ban who send that media
!allow [media type] | the media can be sent freely
!media | show the current status for each media
!media list | show the list of the media you can manage
!warn [reply] | warn an user. He will be kicked/banned when the max number of warns will be reached
!warn [kick/ban] | choose what to do when the max number of warns is reached
!warnmax [number] | choose the max number of warns to reach to be kicked/banned
!getwarns [reply] | show how many warns has an user
!nowarns [reply] | reset the warns of an user
!settings | show the current settings of the group
!disable [rules/about/modlist/extra/report] | this commands will be available only for moderators
!enable [rules/about/modlist/extra/report] | this commands will be available only for moderators
![disable/enable] welcome | turn on/off the welcome message
!disable [arab/rtl/tlink] | everyone with have rtl character in the name/in a message will be kicked, same for who write with arab characters
!enable [arab/rtl/tlink] | rtl character/arab will be allowed
!welcome [a/r/m/ar/am/rm/arm] | change the welcome composition (a: about, r: rules, m:modlist)
!extra [#command] [reply] | set up a reply to an hashtag
!extra list | show the list of hashtag commands
!extra del [#command] | delete that custom command
!link | show the group link (if setted)
!setpoll [link/no] | set up a @pollbot poll link (so moderators can see it with /poll). Use 'no' to remove it
!poll | show the current poll link (if setted)
!setabout [description] | set a description for the group
!addabout [text to add] | add some text to the decription
!setrules [rules] | set the group rules
!addrules [rules] | add some rules
!report [on/off] [reply] | the user will be able to flag messages

###Sudo 

Command | Description 
--- | ---
/aadmin | get a list of all admin commands
/astop | stop the bot and snapshot the Redis DB
/abackup | backup the entire bot
/abc <message> | brodcast a message to all users of the bot
/abcg <message> | brodcast a message to all groups the bot is in
/asave | snapshot Redis DB
/acommands | personal stats on commands usage
/astats | general bot stats
/ablock [by reply]/[id] | block someone from using the bot
/aunblock [by reply]/[id] | unblock someone from using the bot
/asubadmin [by reply] | sub another person as sudo
/ar [by reply] | reply to a message
/asend [by reply] | send a message to a user (may not work)
/aresid [id]| resolves the username if cached in DB
/adownload [reply to file] | uploads the file to the server (50 MB limit)

#### Credits

[@RememberTheAir](https://github.com/RememberTheAir/GroupButler)
