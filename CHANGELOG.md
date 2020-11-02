# **Sxmo**: Simple X Mobile - *Changelog*
## Image Releases:
- **0.1.11:** 
  - sxmo-utils: 1.1.11
  - sxmo-dwm: 6.2.9
  - sxmo-dmenu: 4.9.6
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.3
  - sxmo-svkbd: 1.0.5
  - lisgd: 0.1.1
- **0.1.10:** 
  - sxmo-utils: 1.1.10
  - sxmo-dwm: 6.2.9
  - sxmo-dmenu: 4.9.6
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.3
  - sxmo-svkbd: 1.0.5
  - lisgd: 0.1.1
- **0.1.8:** 
  - sxmo-utils: 1.1.8
  - sxmo-dwm: 6.2.8
  - sxmo-dmenu: 4.9.5
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.3
  - sxmo-svkbd: 1.0.5
  - lisgd: 0.1.1
- **0.1.7:** 
  - sxmo-utils: 1.1.7
  - sxmo-dwm: 6.2.7
  - sxmo-dmenu: 4.9.5
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.1.0
- **0.1.6:** 
  - sxmo-utils: 1.1.6
  - sxmo-dwm: 6.2.6
  - sxmo-dmenu: 4.9.4
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.1.0
- **0.1.5:** 
  - sxmo-utils: 1.1.5
  - sxmo-dwm: 6.2.6
  - sxmo-dmenu: 4.9.4
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.3
- **0.1.4:** 
  - sxmo-utils: 1.1.4
  - sxmo-dwm: 6.2.6
  - sxmo-dmenu: 4.9.4
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.3
- **0.1.3:** 
  - sxmo-utils: 1.1.3
  - sxmo-dwm: 6.2.6
  - sxmo-dmenu: 4.9.4
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.2
- **0.1.2:** 
  - sxmo-utils: 1.1.1
  - sxmo-dwm: 6.2.5
  - sxmo-dmenu: 4.9.2
  - sxmo-st: 0.8.3.3
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.2
- **0.1.1:** 
  - sxmo-utils: 1.1.0
  - sxmo-dwm: 6.2.4
  - sxmo-dmenu: 4.9.2
  - sxmo-st: 0.8.3.2
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.2
- **0.1.0:** 
  - sxmo-utils: 1.0.9
  - sxmo-dwm: 6.2.4
  - sxmo-dmenu: 4.9.2
  - sxmo-st: 0.8.3.2
  - sxmo-surf: 2.0.2
  - sxmo-svkbd: 1.0.4
  - lisgd: 0.0.2

## Packages:
### sxmo-utils:
#### 1.1.10 -> 1.1.11 (Published: 2020-10-30T13:01:15-04:00)
- 5f5cc6e	Anjandev Momi: Added button for build status
- 8d5eda8	Reed Wade: Add automatic shellchecks with CI
- 55887d9	Anjandev Momi: update megiaudioroute.c for 5.9 kernel
- c8ca9e8	Sam Bowlby: fixed renamed alsa controls
- b78a3ca	Miles Alan: Add sxmo_networks.sh script to manage nmcli connections
- deb83c0	Miles Alan: Don't source /etc/profile & $HOME/.profile if nonexistant in xinit
- f16b3f9	Miles Alan: Add sxmo_vibratepine to programs list for Makefile
- 7830d95	Maarten van Gompel: also source ~/.profile when looking for envvars
- 41f2adf	Serge E. Hallyn: Makefile: be a little more conventional
- 5a4ce87	Serge E. Hallyn: screenlock: set max field width for sprintf
- 2cec0fc	Serge E. Hallyn: Enable irq wakeups
- c94e58f	Anjandev Momi: modemmonitor: fixed no contact name displayed in notifications and new folders without +
- 4c24155	Miles Alan: Don't delete leading + from incoming calls in sxmo_modemmonitor.sh

#### 1.1.9 -> 1.1.10 (Published: 2020-09-12T22:58:17-05:00)
- a48be9c	Miles Alan: Fix shellcheck errors in sxmo_{camera,rotateautotoggle.sh}
- 1253dcd	Julian P Samaroo: Added Clear Notifications option to menu
- 67a5a25	Miles Alan: Omit empty lines from youtube history file
- 64cef4d	Anjandev Momi: camera: update constants for new alpine update
- 1221e85	Andre Ramnitz: Proper xresources for xcalc
- a60641c	Miles Alan: Retain position in RSS script when selecting items
- 47eda92	Miles Alan: Allow multiple word queries for youtube script
- bbdf195	Julian P Samaroo: Show one line in previewing text message to edit
- 93de0d4	Sam Bowlby: correct variable name for incoming text number used in sms hook
- a211d82	Miles Alan: Set MPV_HOME in xinit and add input.conf & mpv.conf
- 561122b	Miles Alan: sxmo_camera.sh: Set cache-secs and demuxer-readahead-secs to 0 to prevent lag
- fbb431b	Miles Alan: sxmo_camera.sh: Launch rear/front camera fns in st to show startup progress
- a426555	Miles Alan: sxmo_camera.sh: Pipe ffmpeg converted V4L2 to rawvideo data; remote X rotation
- 607ef17	Miles Alan: Refactor camera script to use mpv instead of mplayer and delete dead code
- 44784c1	Anjandev Momi: camera: low latency preview and picture
- d245a00	Miles Alan: Remove userscripts entry from main menu; Let Edit Scripts remain on menu bottom
- 7978535	Maarten van Gompel: Enhanced application/scripts menu
- ffd3591	Miles Alan: Style fixes for autorotate script for consistency with other scripts
- b86b152	Anjandev Momi: Added autorotate using accelerometer script
- 565eae8	Maarten van Gompel: Updated handling of '+' in phone numbers, it is now never stripped but expected: all numbers should be full international phone numbers (including in contacts.tsv).
- 7f2f50c	Miles Alan: Use proper ytdl flags instead of JSON output for sxmo_youtube.sh
- f57cc7d	Miles Alan: Cleanup sxmo_youtube.sh, shellcheck, indent properly, and remove unused cndtn
- e424bfe	Serge E. Hallyn: sxmo_vol.sh: notify after setvol too
- f24e946	Miles Alan: Rework sxmo_youtube.sh script to use ytdl rather then codemadness youtube-cli

#### 1.1.8 -> 1.1.9 (Published: 2020-08-22T17:08:48-05:00)
- 68641aa	Miles Alan: Move LED setting to be indpendent of notification hook
- 46acb72	Miles Alan: Kill in-progress notification hooks if the notif dir is empty
- 747da78	Miles Alan: Fix shellcheck
- 24c650e	Anjandev Momi: files: play mkv files in mpv
- 3174375	Miles Alan: Improve default notificationhook to vibrate consistently
- 45c5717	Miles Alan: Cleanup logic for notification LED setting; increase default call volume
- 8e1c40e	Miles Alan: Delete calls from modem on terminating the in call script
- 17fb103	Miles Alan: Create a new notification when there is a missed call
- 5f8aad0	Miles Alan: Fix bugs with incall functionality around statusbar showing call duration
- c5b665c	Miles Alan: Look for ATTRIB events for notifications updates; remove "Pickup" menu
- 7559984	Miles Alan: Fix sxmo_notificationmonitor.sh to ensure script running doesnt overlap; (kill)
- 4f118bb	Miles Alan: Add menu entry to edit scripts / open files script in Userscripts menu
- 6b9233b	Anjandev Momi: youtube: keep search history
- 7ec9ca2	Maarten van Gompel: pass incoming phone number to the ring hook (allows distinctive rings/actions based on caller) and added a similar sms hook
- dbdb45b	Maarten van Gompel: smarter configuration of default keyboard if none specified; now compatible with upstream svkbd
- 15aefe2	Maarten van Gompel: added mute and unmute
- ce50d0a	Miles Alan: Re-enable notifications monitor
- faf9bfc	Miles Alan: Refactor notifications work to use 1 interface for writing notifs & use dates
- e6635ba	iressa: Notification patch v4
- dcf5ddd	Miles Alan: Fix shellcheck for sxmo_urlhandler.sh
- 1461509	Miles Alan: Add option to invert colorscheme in config menu
- 68ff670	Julian P Samaroo: Fixed bug in sxmo_vol.sh setvol
- b7b2fa4	Miles Alan: Add Close Menu entry to sxmo_urlhandler.sh menu
- bc10d50	Miles Alan: Remove keynav daemon - this is only relevant for desktop usage..
- d07b542	Miles Alan: Show Htop in application menu if present
- a203bbf	Miles Alan: In sxmo_appmenu.sh & sxmo_urlhandler.sh only show entries if program installed
- 4362eac	Miles Alan: sxmo_modemtext.sh - use variable name $CONTACT rather then $TDIR
- a8910cb	Anjandev Momi: text: show logfiles in order of last contacted (use sxmo_contacts.sh)
- a24d966	Julian P Samaroo: Fix = to == in screenlock
- 91c77ce	Miles Alan: Actually source custom xinit so that ENV vars are properly exported

#### 1.1.7 -> 1.1.8 (Published: 2020-07-26T11:22:59-05:00)
- e20a467	Miles Alan: Bump up sxmo_appmenu.sh to allow 16 entries
- 5c1e382	Miles Alan: Run sxmo_lisgdstart.sh instead of lisgd in sxmo_lock.sh
- 113f756	Maarten van Gompel: Adding a wrapper around sxmo_screenlock, with lock/unlock hooks. Allow setting a target state for sxmo_screenlock, and cleanup on sigterm. Added lock/suspend options to the power menu.
- b513949	Maarten van Gompel: Added make clean
- ace9960	Maarten van Gompel: Made choice for virtual keyboard configurable through the $KEYBOARD environment variable.
- 293bf69	Julian P Samaroo: Add Power menu to appmenu
- c100262	Miles Alan: Remove shellcheck error in sxmo_appmenu.sh
- 3e23624	Miles Alan: Fix typo in sxmo_modemtext.sh
- 92c368c	Anjandev Momi: allow texting over ssh terminal
- f3275b7	Miles Alan: After exiting suspend blink LED while in temporary suspend pending state
- bfdbe29	Maarten van Gompel: added deeper context menus for vim/vis, nano, tuir, ncmpcpp, w3m
- 03025fa	Miles Alan: Delete exit entries from Sxiv / Feh - this should be done via btns or globally
- 36520d4	Miles Alan: Change ring hook location to ~/.config/sxmo/hooks/ring
- 9378530	Dmytro: Ringing sound configurable
- 92e185b	Anjandev Momi: Add XDG user directories and env variables
- d4cb102	Maarten van Gompel: added app context menu for feh and sxiv (image viewers)
- 5c4c6c1	Miles Alan: Refactor xinit to be more structured and set $EDITOR if unset to vis
- d2ee25d	Miles Alan: Allow viewing cached RSS feeds via toggling on/off fetch option
- 92e048a	Miles Alan: Screenlock: Recognize keyrelease rather than keydown to avoid inadvertent exits
- a50f1d3	Stephen Paul Weber: Allow easily searching in the page from surf menu
- 579503e	Miles Alan: Add udev rules to update status bar plugging in / unplugging charger
- 0801bb1	Miles Alan: Restructure configs into seperate folder
- d713b19	Miles Alan: Use sxmo_statusbarupdate.sh script instead of direct calls duplicated logic
- 10705f0	Miles Alan: Update statusbar on waking up from deep sleep so battery % & time accurate
- 87c99ec	Miles Alan: Use USR1 signal instead of update file for updating statusbar
- f448f3c	Miles Alan: Source rather than just run the user's custom xinit file; allows exporting ENV
- 4fe1298	Miles Alan: Fix weather hourly forecast time for <12hr times
- 383c523	Miles Alan: 5s timeout for StateSuspendPending
- fe24fec	Anjandev Momi: make files dmenu case insensitive
- a35ca3f	Miles Alan: screenlock - Sort functions alphabetically; add declarations; and fix warnings
- b51644b	Miles Alan: screenlock - Implement StateSuspendPending so exiting CRUST requires 3 clicks
- 0013ea3	Anjandev Momi: files: if folder name longer than 7 characters, truncate
- a245f46	Anjandev Momi: screenlock: enable rtc wakeup source
- cf4cd1b	Miles Alan: Retain brightness when entering screenlock
- 7b3be04	Miles Alan: Disable buggy bluetooth driver before entering suspend
- aa8513b	Miles Alan: Use direct open/write/close instead of stdlib calls for device IO
- 37941f6	Miles Alan: Always reconfigure wakeup sources before entering suspend
- be6737e	Miles Alan: Always wake up from suspend to StateNoInput
- 4d9d1ec	Miles Alan: Modify screenlock to suspend on triple pressing volume down button
- f25bb82	Miles Alan: Fix loop for sxmo_weather.sh
- 57f6e58	Miles Alan: Loop reddit script and use URL handler script with fork
- 7a9ec12	Miles Alan: Fork urlhandler program if run with fork option and pass opt in RSS script
- fe15eb6	Miles Alan: Loop weather script fetch/display logic
- 95e36cc	Miles Alan: Loop RSS script so that you can launch multiple items without reopening
- e006799	Miles Alan: Always kick mpv to use -ao=alsa; prevents alsa from trying to use pulse
- 9919f49	Miles Alan: Modify weather script to pull hourly data and format in tables
- 95f171e	Miles Alan: Delete zipcodes config file - GPS locations is better, and international
- 07119a7	Anjandev Momi: make dmenus with contact names case insensitive
- 63d5ec3	Maarten van Gompel: added wireless symbol to bar if wireless is connected

#### 1.1.6 -> 1.1.7 (Published: 2020-06-30T22:29:32-05:00)
- 435a1e7	Miles Alan: Create empty file for contactsfile if missing
- a011bed	Miles Alan: Ensure shellcheck passes
- 888ccc5	Miles Alan: Add Foxtrotgps back to programs menu
- e648f73	Daniel Edgecumbe: smxo_appmenu.sh: Use 'which' to kill pre-existing instances
- 4079d4d	Miles Alan: Don't loop after paste in Maps in sxmo_appmenu.sh
- 18745b0	Miles Alan: Use setsid to update /tmp/sxmo_bar after call to refresh bar after process dead
- b346392	Miles Alan: Remove system audio recording - should be done via userscript
- f058e17	Miles Alan: SIGKILL on close menu in dialer
- 4814701	Miles Alan: Kill existing foxtrotgps before setting new settings via gsettings This should prevent foxtrotgps from saving (e.g. overriding parameters) unintentionally between sessions
- 25cc04e	Miles Alan: Cleanup sxmo_weather.sh shellscript and make sure shellcheck passes
- ad39251	Miles Alan: Show incoming contact name on ring; show texts in reverse chronological order
- 844ce9d	Miles Alan: Plus prefix strip numbers before storing into modem log
- e3f50e9	Miles Alan: Only show entries to text for directories that exist; fix number bugs
- 917ad2e	Miles Alan: Remove temp files usage from sxmo_contacts.sh; & use awk to allow unsorted
- a032e49	Miles Alan: Remove +1 stripping from numbers in modem scripts
- 9f930e7	Miles Alan: Simplify sxmo_contacts.sh - use less tempfiles and join logic, output w/ colon
- f95cb51	Anjandev Momi: add contacts.tsv integration to call and text apps
- ff9ddcb	Miles Alan: Allow customization of zipcodes menu for sxmo_weather.sh via $SXMO_WEATHERZIPS
- a804e24	Maarten van Gompel: added New Tab and New Window to firefox menu
- efc1051	Maarten van Gompel: fixed typo
- e455d31	Maarten van Gompel: read custom conky.conf if available
- 46a8999	Miles Alan: Fix gps location setting bug
- 67e9320	Miles Alan: Fix Close Menu entry for youtube script
- c119ab0	Miles Alan: Pull dialing functionality into seperate script; allows in-call check to be valid
- 391df5d	Miles Alan: Fix syntax error in sxmo_appmenu.sh; trap not signal
- 8ee22f3	Miles Alan: Quote $@ where needed
- dfca1ed	Miles Alan: Fix shellcheck issue with reddit script
- cef4de2	Miles Alan: Use "$@" for expansion calls rather than manually listing argument numbers
- d4a6bac	Miles Alan: sxmo_record.sh Fix call to getdur in filename generation
- 95f93c8	Miles Alan: sxmo_appmenu.sh Only ever pick first match in sxmo_appmenu.sh
- 26d8ff0	Miles Alan: sxmo_appmenu.sh: Never literal string grep match on empty string
- 6cbd867	Miles Alan: Set scale to be 5 for bc lat/lon converisons
- 00e09e6	Miles Alan: Allow user customization of map locations via SXMO_GPSLOCATIONSFILES
- b80ce9e	Miles Alan: Disable ligsd 1 finger gestures while using foxtrotgps
- 60963cd	Miles Alan: Start lisgd via a script instead of directly so changing gestures is simpler
- 061d253	Miles Alan: Fill out gpsgeoclutget fn to call where-am-i to get current lat/lon
- 1d13cb6	Miles Alan: Make sure shellcheck passes and fixup style in sxmo_gpsutil.sh script
- 9709acc	Miles Alan: Implement context menu for foxtrotgps with copy/paste/search/locations Rename context menu title for foxtrotgps to Maps and move to top-level menu
- 91d6ebb	Miles Alan: Call improvements; fix bugs associated with hanging up; refresh bar on callend
- f88b83f	Julian P Samaroo: sxmo_appmenu: Show symlinked scripts in userscripts menu
- c867613	Miles Alan: Cleanup record script; respect $SXMO_RECDIR; cut ms in file; allow ext calling
- c7eb70d	Miles Alan: Youtube script bugfixes
- 51921e5	Miles Alan: Fix bug preventing hanging up call upon killing window
- 34cd1fd	Miles Alan: Make close menu entry in scripts more functional
- f4aea53	Miles Alan: Add reddit script
- bca4475	Miles Alan: Show duration of call in statusbar
- a74b91a	Miles Alan: Add license
- a4b2724	Miles Alan: Clean up modem functionality & don't ever kill dmenu; move call monitoring to call script
- 3c5a85a	Miles Alan: Add windowify toggle to the in call menu
- 521243a	Miles Alan: Fix sxmo_modemlog.sh to use st -f

#### 1.1.5 -> 1.1.6 (Published: 2020-06-14T09:56:55-05:00)
- 2a925ed	Miles Alan: Allow calling numbers with + prefix
- 24d686e	Miles Alan: Fix recording to only audio route when needed
- 1460f0c	Miles Alan: Allow blinking multiple colors for blinkled
- 2ee1342	Miles Alan: Move files script into top system menu
- b50e3fd	Miles Alan: Move volume up/down to Audio
- 818d7d5	Miles Alan: Use lisgd orientation -o flag in rotate script
- 049a93e	Miles Alan: Shellcheck and tabindent all scripts
- bd5ead1	Miles Alan: Fix shellcheck errors
- 7f31a3d	Miles Alan: Simplify audio routing for modem call; add linemic via audio routing -l
- d5ca81b	Miles Alan: Add sxmo_record.sh script and Record entry to scripts menu
- 29098d7	Miles Alan: Allow sxmo_files.sh script to be called with $1 as startdir
- fb44e88	Miles Alan: Support headphone (linejack) mic input in audio routing program
- f10eab0	Miles Alan: Enable recording via dsnoop
- 4c39cd1	Miles Alan: Add missing option for echomic -z to megi's audioroute program
- 624b702	Anjandev Momi: sxmo_appmenu: do not excecute userscript unless permission set
- 660506b	Miles Alan: Set LED for screenlock before grabbing focus (e.g. register on PP button hold immediately)
- 1ac5e64	Miles Alan: Tab indent C programs for consistency
- 3c65a36	Anjandev Momi: files: play audio files with mpv no-vid and add mp3 support

#### 1.1.4 -> 1.1.5 (Published: 2020-06-07T20:44:03-05:00)
- 41e2e31	Miles Alan: Fix bug with files script
- 8015d49	Miles Alan: Run $XDG_CONFIG_HOME/sxmo/xinit if it exists on starting X
- 6a432b3	Miles Alan: Shellcheck a few core scripts
- 1c8efb9	Miles Alan: Add shellcheck task to Makefile
- f9e5801	Miles Alan: Shellcheck and tabindent all appscripts
- e23f439	Miles Alan: Minor style cleanups in userscripts implementation
- 933ef2b	Anjandev Momi: appmenu: added support for user scripts in $XDG_CONFIG_HOME/sxmo/userscripts
- 1b78c3c	Anjandev Momi: modem: use XDG_CONFIG_HOME to save logs
- 66eeb46	Miles Alan: Fix bug - dialer launches into screenlock upon starting call
- 41714c8	Miles Alan: Attempt to fix screenlock - only show led after screen is already locked
- 8ebf11f	Miles Alan: Add files script

#### 1.1.3 -> 1.1.4 (Published: 2020-06-01T17:56:13-05:00)
- 6d0f282	Miles Alan: Use default lisgd threshold always
- 2002565	Miles Alan: youtube-cli instead of idiotbox-cli per codemadess-frontends
- 6e9c5ee	Miles Alan: Kill old instance of lisgd on xinit

#### 1.1.2 -> 1.1.3 (Published: 2020-05-30T15:01:07-05:00)
- b3804ad	Miles Alan: Disable lisgd before locking screen in call script
- ff5f92c	Anjandev Momi: xinit: set touch env variable=1 for firefox
- 0cdf6e4	Miles Alan: Rework notifications to only use dunst
- 9a16998	Miles Alan: Rework timer script and timezone script to use $# checking/recursive call trick
- e842460	Miles Alan: Add script to allow user to change timezone from the config menu

#### 1.1.1 -> 1.1.2 (Published: 2020-05-26T19:00:42-05:00)
- 35a432d	Miles Alan: Copy to xsel instead of xclip in urlhandler.sh
- da0b5cc	Miles Alan: Make bar come in quickly upon logging in rather than waiting
- 687d42c	Miles Alan: Delete duplicate dead code
- 372b950	Miles Alan: Use $BROWSER for search script and actually close if user hits close menu
- c0bf164	Miles Alan: Fix capitalization of surf menu entry
- a4562f2	Miles Alan: Update to show different letter depending on audio out device
- 3c1fbd9	Miles Alan: Migrate audio menu logic to appmenu and add indicator for current out device
- e7032a4	Miles Alan: Remove redudant Wifi entry in Config menu
- 23d6a29	Miles Alan: Add rotation script sxmo_rotate.sh which fixes touchscreen input
- 46f26e6	Miles Alan: Update dwm bar instantly after updating audio output
- 3328a39	Miles Alan: Don't show keyboard for switching audio profile
- 52c49b7	lightship: Address feedback
- e7b9c8d	lightship: Add audio out menu

#### 1.1.0 -> 1.1.1 (Published: 2020-05-25T14:51:35-05:00)
- 6777dbd	Miles Alan: Fix bug w/ newcall() in sxmo_modemmonitor.sh preventing ringing call from being logged Resolves sxmo-tickets #26 reported by ~jan_wagemakers
- 8249d67	Miles Alan: Add bar toggle to Config menu to toggle dwm bar
- 60ba0a4	Miles Alan: Menu naming consistency - always use uppercase for prompt
- 1cecfd4	Miles Alan: Implement selection mode toggle for St
- dcb7273	Miles Alan: Remove unused config file
- b5d9100	Miles Alan: Remove unused dimscreentoggle.sh script
- ce5c529	Miles Alan: Fix bug with camera error message popping up after usage
- 6162fa8	Miles Alan: Add copy selection menu entry for st

#### 1.0.9 -> 1.1.0 (Published: 2020-05-22T23:13:05-05:00)
- ba38ecc	Miles Alan: Add -t flag to dmenu for websearch allowing literals irregardless of match
- 04ef042	Miles Alan: Fix close menu checks for sxmo_{websearch,timermenu}.sh
- 0a47a6e	Miles Alan: Show message at end of sxmo_upgrade.sh and leave terminal open via read
- d3d67d5	Miles Alan: Remove unbuilt functionality menu entries from foxtrotgps menu
- 30dd199	Miles Alan: Add error message if camera can't open
- e89ec25	Miles Alan: Increase number of entries menu without scrolling for dmenu sxmo_urlhandler.sh
- d7c9401	Miles Alan: Bump up size for sxmo_urlhandler.sh dmenu prompt
- 086d468	Miles Alan: Add Web Search script to prompt dmenu for query to search DDG in surf
- 402aa6f	Miles Alan: Add xcalc to the app menu; xrdb new xcalc xresources file on xinit
- ce78bf5	Miles Alan: Vibrate phone instead of flipping screen on off for timer script
- 0e35ec4	Miles Alan: Make AM/PM on conky actually accurate on the root window
- ba8e8b0	Miles Alan: Fix typo when modem not found you're -> your

#### 1.0.8 -> 1.0.9 (Published: 2020-05-20T16:52:00-05:00)
- fa3550c	Miles Alan: Add warnings to modem scripts if the modem is not present
- b4c02ac	Miles Alan: Set lisgd threshold to 500
- ae5d32f	Miles Alan: Don't log grep test in modem dialer
- b0c730c	Miles Alan: Fix bug with launching surf from menu and fix multiword searches for yt
- 4155254	Miles Alan: Remove per-project CI

#### 1.0.7 -> 1.0.8 (Published: 2020-05-19T21:37:27-05:00)
- e2e660e	Miles Alan: Remove modem toggle status functionality in menu since it's in topbar anyway
- 962375a	Miles Alan: Remove blank entry from dialer menu
- ba711fb	Miles Alan: Fix surf hotkeys
- bfbec8e	Miles Alan: Make default RSS feeds suck less; automatically start modem monitor

#### 1.0.6 -> 1.0.7 (Published: 2020-05-15T21:23:49-05:00)
- 34b2c57	Miles Alan: Fixes related to cleaning up modem functionality; fix audio; add flash toggle
- b37138c	Miles Alan: Fix pine indicator leds paths for latest pmOS setup and add white (flash)

#### 1.0.5 -> 1.0.6 (Published: 2020-05-12T19:16:58-05:00)
- 8e5763a	Miles Alan: Reorder netsurf in app menu program choices init to it applies before surf
- 546d220	Miles Alan: Add polkit rule to enable modemamanger for users in group plugdev
- 8b52988	Miles Alan: Remove sudo from mmcli commands in modem scripts

#### 1.0.4 -> 1.0.5 (Published: 2020-05-09T20:32:55-05:00)
- e587705	Miles Alan: Lots of bugfixes related to calling/modem and various script fixes
- 22d974f	Miles Alan: Cleanup calling - mostly working; misc cleanup scripts; add vibrate program
- fd28610	Miles Alan: Delete dead tcl code
- 8ef3749	Miles Alan: Cleanup xinit

#### 1.0.3 -> 1.0.4 (Published: 2020-05-02T19:28:54-05:00)
- b96789d	Miles Alan: Enable synclient/keynav; fix kb w/ dmenu script; make bat/volume control device independent
- f47feb5	Miles Alan: Remap caps to escape in xmodmap
- ae983ef	Miles Alan: Various progess on calling & texting; reorganize scripts dirs by category
- 334c74a	Miles Alan: Initial pass on phone dialer/incoming/status functionality

#### 1.0.2 -> 1.0.3 (Published: 2020-03-23T22:37:07-05:00)
- ed09f2b	Miles Alan: New scripts: sxmo_{youtube,weather,rss,camera}.sh; Implement screenlock Various minor script bugfixes

#### 1.0.1 -> 1.0.2 (Published: 2020-03-21T23:45:23-05:00)
- 9beef51	Miles Alan: Install alsa dmix setup to /etc/alsa/conf.d/ insted of /etc/asound.conf Fix sxmo_timer.sh Fix prefix
- 309ba56	Miles Alan: Autoenable dmix by adding basic dmix conf to /etc/asound.conf

### sxmo-dwm:
#### 6.2.8 -> 6.2.9 (Published: 2020-08-22T16:32:33-05:00)
- 035d0e6	Miles Alan: Ignore drawing clientindicators in bar for svkbd
- 38d13fd	Miles Alan: Draws a dot indicator overlayed on each tag icon for each client. The selected client is drawn as a larger horizontal line.
- 54eacbf	Anjandev Momi: tapping on status opens appmenu

#### 6.2.7 -> 6.2.8 (Published: 2020-07-25T21:05:11+02:00)
- 749ee65	Maarten van Gompel: Use $KEYBOARD environment variable and use sxmo_lock.sh
- 486e1bc	Miles Alan: Blink blue instead of green on launching new terminal/surf

#### 6.2.6 -> 6.2.7 (Published: 2020-06-30T19:22:07-05:00)
- 7b3a479	Miles Alan: Show tabs as equal sizes when using bstack
- 8935bde	Miles Alan: Run sxmo_lisgdstart.sh instead of lisgd directly to restart lisgd properly
- 4ac2cd4	Miles Alan: Run xdotool windowkill instead of dwm's killclient fn for now for window kill This seems more reliable..

#### 6.2.5 -> 6.2.6 (Published: 2020-05-30T15:09:50-05:00)
- 5adf679	Miles Alan: Delete dead code
- 56785cf	Miles Alan: Kill lisgd before starting screenlock and then start it back up after exiting
- e03e6d4	Miles Alan: Remove project-specific .build.yml

#### 6.2.4 -> 6.2.5 (Published: 2020-05-25T00:58:42-05:00)
- 32560e9	Miles Alan: Add fakefullscreen patch https://dwm.suckless.org/patches/fakefullscreen/

#### 6.2.3 -> 6.2.4 (Published: 2020-05-16T12:51:54-05:00)
- 559a279	Miles Alan: Mod+XK_s to transfer
- f8ec823	Miles Alan: Fix tagging - 2 rows for bartabggroups; use Mod3Mask for toggletag

#### 6.2.2 -> 6.2.3 (Published: 2020-05-11T20:48:45-05:00)
- 2da2ca5	Miles Alan: Remove action to launch dmenu on clicking dwm bar
- 5c6ebbc	Miles Alan: Add brightness control for PBP using brightness up/down keys

#### 6.2.1 -> 6.2.2 (Published: 2020-05-01T19:55:23-05:00)
- 04e3e45	Miles Alan: Fix title update
- 9206674	Miles Alan: Add hotkeys for volume up/down Mod+Shift+Up/Down
- 11ff210	Miles Alan: Add Pushup/down patch
- 8d696af	Miles Alan: Fix cycle layouts function to be a lot simpler and actually work
- 414a49e	Miles Alan: Minor config.def.h changes
- 2325ef4	Miles Alan: Transferall patch
- 08e2d23	Miles Alan: Inplacerotate patch
- 2b8c1be	Miles Alan: Fix Dmenu run commands in config.def.h
- d3b5dbe	Miles Alan: Transfer patch
- fc28f2d	Miles Alan: Add switchcol patch
- 6dd451c	Miles Alan: Use inplacerotate instead of rotatestack
- c443c24	Miles Alan: Attachbelow patch
- e4a31fc	Miles Alan: Add specific layouts to apply for cycle layouts fn
- a51e8c8	Miles Alan: Remove float button handler
- 209d78c	Miles Alan: Style fix
- 6b52691	Miles Alan: XK_q to killclient aswell
- 5a7c1ef	Miles Alan: Toggle floating and unfloat visible
- 88d7fe1	Miles Alan: Add dragmfact
- e9728a3	Miles Alan: Deck & deckdouble layouts
- 13266ef	Miles Alan: Add Bartabgroups when used on PBP
- 8de4a21	Miles Alan: Updates for PBP compatibility
- ab1aaf1	Miles Alan: Cleanup code and config related to shiftview/clienttagpush
- 9cd20ae	Miles Alan: Multikey fixes
- a4ebfc9	Miles Alan: Shiftview

#### upstream-6.2 -> 6.2.1 (Published: 2020-03-25T19:10:25-05:00)
- 653315a	Miles Alan: Some keyboard fixes; screenlock update; shift tag by clicking window title
- 578d043	Miles Alan: Kbd/dock patch from Peter John Hartman <peterjohnhartman_AT_gmail.com>
- c53421a	Miles Alan: Revert old version of dock patch
- 88c0eb0	Miles Alan: Svkbd in config.def.h
- 8cac378	Miles Alan: Shell false
- 7573454	Miles Alan: Add autogenerated yml manifest
- 14d68bc	Miles Alan: Fix bug with holdkeys being index 0
- 8537e12	Miles Alan: Add tagtoright function
- efd80f7	Miles Alan: Launch TERM/BROWSER hotkey
- f40512f	Miles Alan: Swallow patch
- 9ebb304	Miles Alan: Trigger led on spawing / killing clients
- 2aa9872	Miles Alan: Rotatestack and retain index while rotating
- 4fe37f9	Miles Alan: Disable enternotify/motionnotify - focus on click only; disable mouse usages
- 25fd73b	Miles Alan: Fix scripts names
- c475067	Miles Alan: Add multikey patch
- 0cc2a3c	Miles Alan: Add bstack patch
- f4c5576	Miles Alan: Bump font size and only use 4 tags
- 90f6878	Christopher Drelich: Function to cycle through available layouts.

### sxmo-dmenu:
#### 4.9.5 -> 4.9.6 (Published: 2020-09-10T19:21:48-05:00)
- fcffc6f	Miles Alan: initialindex: Correct -idx to retain position in list if past first page
- a8581af	Miles Alan: Make highlight patch compatible with grid patch
- 3189cd5	Miles Alan: Add -g option to display entries in the given number of grid columns

#### 4.9.4 -> 4.9.5 (Published: 2020-06-16T21:40:30-05:00)
- 18d1263	Miles Alan: Add -wm flag to run dmenu as managed WM window (e.g. no override_redirect)

#### 4.9.3 -> 4.9.4 (Published: 2020-05-29T18:59:12-05:00)
- 22b5776	Miles Alan: Make scroll patch compatible with numbers patch
- d39b668	Miles Alan: Fix scroll patch alignment in horizontal mode
- 7e3b698	Miles Alan: Apply scroll patch: https://tools.suckless.org/dmenu/patches/scroll/

#### 4.9.2 -> 4.9.3 (Published: 2020-05-26T16:47:44-05:00)
- 431dc8c	Miles Alan: If the numer/denom are equal only print single number in recalculatenumbers

#### 4.9.1 -> 4.9.2 (Published: 2020-01-14T21:50:04-06:00)
- 920f89e	Miles Alan: Highlight matched text in a different color scheme
- b120a52	Miles Alan: Fix width for dmenu when in center

#### upstream-4.9 -> 4.9.1 (Published: 2020-03-11T23:16:58-05:00)
- 488c39d	Miles Alan: Add input patch
- eb07535	Miles Alan: Add initialindex patch
- 9339c04	Miles Alan: Add numbers patch
- 5498f53	Miles Alan: Add keybindings for lower/raise/power buttons
- 3c9de8d	Miles Alan: Mouse support
- 1588e7d	Miles Alan: Center patch
- d151b8c	Miles Alan: Border patch

### sxmo-st:
#### 0.8.3.2 -> 0.8.3.3 (Published: 2020-05-25T12:50:01-05:00)
- ec1a305	Miles Alan: Allow selection mode to be toggled with Ctrl-Shft-S and set atom _ST_SELMODE
- 1663efa	Miles Alan: Add selectionclear event for switching between windows
- be2d8eb	Miles Alan: Don't set dirt on initial selection start - e.g. avoids 1 wide cursor sel
- f3a7c89	Miles Alan: Re-allow selection by disabling selsnap all together

#### 0.8.3.1 -> 0.8.3.2 (Published: 2020-05-09T20:15:39-05:00)
- 9060b8d	Miles Alan: Fix pipe copy/type completion scripts references
- 5664059	Miles Alan: Use monospace font

#### upstream-0.8.3 -> 0.8.3.1 (Published: 2020-05-01T20:41:56-05:00)
- ad56bee	Miles Alan: Add externalpipe commands
- fc819a5	Miles Alan: For now ignore mouse selection handler for compatability with lisgd
- 31b1800	Miles Alan: Minor config.def.h fixes
- a9758c9	Miles Alan: Add externalpipe patch
- f92951b	Miles Alan: Add invert patch
- fa6d2dd	Miles Alan: Add scrollback patch

### sxmo-surf:
#### 2.0.2 -> 2.0.3 (Published: 2020-07-18T18:07:43-05:00)
- 5f3e28e	Miles Alan: Recognize URLs starting with // as valid URLs via regex instead of searching
- c71226a	Stephen Paul Weber: Always set _SURF_URI on load event
- c0bb3d1	Stephen Paul Weber: Enable searching by keyword on URL inputs

#### 2.0.1 -> 2.0.2 (Published: 2020-05-13T19:50:51-05:00)
- 1f3b5a5	Miles Alan: Fix the homepage to actually work properly
- 2e70dbb	Miles Alan: homagepage

#### upstream-2.0 -> 2.0.1 (Published: 2020-03-13T17:02:52-05:00)
- 7941c01	Miles Alan: Swap homepage
- 4199559	Miles Alan: Disable gestures
- 9109fd4	Miles Alan: Disable accelerated canvas
- 89bb7be	Miles Alan: Set homepage and disable plugins
- e8ad12f	Miles Alan: Disable javascript
- bf48f3c	Miles Alan: Enable back/forward gestures for surf
- e973d49	Miles Alan: Add externalpipe patch
- e296323	Miles Alan: Pull up dmenu with kb

### sxmo-svkbd:
#### 1.0.4 -> 1.0.5 (Published: 2020-07-23T18:22:39-05:00)
- 4fc0c19	Miles Alan: Restore original svkbd colorscheme and bump up to use monospace-18 as font
- f3a0a23	Miles Alan: Fix SIGTERM functionality by making sure to sync before free in cleanup()
- 76e7e35	Maarten van Gompel: Added Xft support (in the same fashion as done in dmenu by Hiltjo Posthuma), Xinerama support, changed colors and key layout

#### 1.0.3 -> 1.0.4 (Published: 2020-05-11T21:49:58-05:00)
- 38f41bf	Miles Alan: Add pipe key to backslash key
- db485ab	Miles Alan: Run XFlush instead of XSync before starting main loop; fixes bug where rending of keys fails when used in conjunction w/ dwm dock patch

#### 1.0.2 -> 1.0.3 (Published: 2020-05-02T19:24:47-05:00)
- 5456248	Miles Alan: Fix SIGTERM handler - flip terminate flag in sigterm handler & cleanup properly
- 6d765fe	Miles Alan: Clean up secondary layout positioning LRDU properly & blanking placeholders

#### 1.0.1 -> 1.0.2 (Published: 2020-03-27T21:47:39-05:00)
- 2dd9d52	Miles Alan: Move layouts to single layout.h file & toggle layers via memcpy w/ XK_Cancel

#### upstream-1.0 -> 1.0.1 (Published: 2020-03-07T10:34:03-06:00)
- a7da3f8	Miles Alan: Add custom layouts
- bb14167	Miles Alan: Delete unused layouts
- 453f8c3	Miles Alan: Use 10x20 font
- fbdfb49	Miles Alan: Bump up height of keyboard

### lisgd:
#### 0.1.0 -> 0.1.1 (Published: 2020-07-12T21:25:01-05:00)
- ee47ac2	Miles Alan: Remove extra variable
- 7f977f9	Nicolai Dagestad: Correctly handle the return value of realloc
- b25cc35	Nicolai Dagestad: Add missing math library for linking
- dce4bcf	Eyal Sawady: die: fix warning

#### 0.0.3 -> 0.1.0 (Published: 2020-06-14T09:14:42-05:00)
- 7660ad6	Miles Alan: Fix typos and alphebetically sort docs for CLI flags
- 51ecaea	Miles Alan: Add basic manpage and sync up README documentation
- b4dd89a	Miles Alan: Rework logic to support diagnol gestures, rotation, and timeouts

#### 0.0.2 -> 0.0.3 (Published: 2020-06-01T17:37:10-05:00)
- 877beea	Miles Alan: Fix bug where on booting end position x/y = 0/0 causing improper LR gesture
- becf4f2	Miles Alan: Improve gestures commandline flag documentation examples
- 65be0a7	Miles Alan: Fix README documentation typo for gestures
- 8acb43e	Miles Alan: Fix typo in documentation commandline example

#### 0.0.1 -> 0.0.2 (Published: 2020-04-29T20:25:32-05:00)
- 12e9a9f	Miles Alan: Change default bindings
- 77e3569	Miles Alan: README cleanup
- 437a1f4	Miles Alan: Add gitignore
- 51df53e	Miles Alan: README fixes
