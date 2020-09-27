# **Sxmo**: Simple X Mobile - *User Guide*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos) | [Changelog](https://git.sr.ht/~mil/sxmo-docs/tree/master/CHANGELOG.md)

---

**Table of Contents:**

- [Global UI Controls](#strongglobal-ui-controlsstrong)
- [The Menu System](#strongthe-menu-systemstrong)
- [Included Menus](#strongincluded-menusstrong)
- [Screenlock](#strongscreen-lockstrong)
- [Calls and Texting](#strongcalls-and-textingstrong)
- [Included Scripts and Applications](#strongincluded-scripts-and-applicationsstrong)
- [Wifi](#strongwifistrong)
- [Audio Routing](#strongaudio-routingstrong)
- [Resize SD Card Size](#strongresize-sd-card-sizestrong)
- [Updating and Changelog](#strongupdating-and-changelogstrong)
- [User Customizable Functionality](#stronguser-customizable-functionalitystrong)

## **Global UI Controls**

**Button Bindings**

The core of the Sxmo UI is based on the [dwm](http://dwm.suckless.org) window manager patched with
(among other patches), the [multikey](https://dwm.suckless.org/patches/multikey/) patch. This patch allows dwm to
recognize rapid successive (e.g. double/triple clicks) button presses to
trigger different actions. The three hardware buttons on the Pinephone
thus can trigger 9 different actions.

The default button bindings are:

- **Volume Raise**:
  - **1 tap**: Launch [application-specific context menu](#strongincluded-menusstrong)
  - **2 taps**: Launch [global system menu](#strongincluded-menusstrong)
  - **3 taps (or hold)**: Activate [screen lock](#strongscreen-lockstrong)
- **Volume Lower**:
  - **1 tap**: Toggle dwm layout algorithm (between monocle/tile/bstack)
  - **2 taps**: Shift current client in stack
  - **3 taps (or hold)**: Kill client
- **Powerkey**:
  - **1 tap**: Toggle svkbd onscreen keyboard
  - **2 taps**: Launch st (terminal)
  - **3 taps (or hold)**: Launch surf (browser)


**Swipe gestures**

In addition to the button bindings provided through dwm, a custom application
called [lisgd](http://git.sr.ht/~mil/lisgd) was developed to provide 
touchscreen swipe gestures within Sxmo.

Wherein L=left, R=right, D=down, U=up, the default swipe gestures are:

  - **1 finger R-to-L**: Focus next tag
  - **1 finger L-to-R**: Focus previous tag
  - **1 finger LD-to-RU**: Increase volume
  - **1 finger RU-to-LD**: Decrease volume
  - **1 finger RD-to-LU**: Increase brightness
  - **1 finger LU-to-RD**: Decrease brightness
  - **2 fingers R-to-L**: Move focused application to next tag
  - **2 fingers L-to-R**: Move focused application to previous tag
  - **2 fingers D-to-U**: Launch onscreen keyboard, svkbd
  - **2 fingers U-to-D**: Close onscreen keyboard, svkbd

Note, earlier versions of Sxmo based on lisgd prior to version 0.1 used 3 and
four finger gestures; please update to get the up-to-date gestures mentioned
above.

## **The Menu System**

Menus are a central feature of Sxmo and are navigable through using
the Pinephone's 3 hardware buttons. Also you can use the touchscreen
to tap your selection if you'd like as well. The menus are essentially
scripts around a custom patched version of [dmenu](http://tools.suckless.org/dmenu). Note 
that while using a menu, dwm's [button bindings](#strongglobal-ui-controlsstrong) won't be triggered as 
these grab's are setup to be mutually exclusive from X's point of view.

The default menu bindings for the Pinephone buttons are:

- **Volume Raise**: Previous item
- **Volume Lower**: Next item
- **Power**: Select item


## **Included Menus**

**1. Application-specific context menus**

The application-specific context menu (triggered by single tapping the volume
raise key) lets you you access application-specific features of the currently
focused window. For example while using mpv, the application-specific 
context menu lets you pause the video, increase/decrease volume, seek, etc. 
You can reference the [sxmo_appmenu.sh](https://git.sr.ht/~mil/sxmo-utils/tree/master/scripts/core/sxmo_appmenu.sh) script for a full list of functionality.

**2. Global system menu (Sys)**

The global system menu (triggered by double tapping the volume raise button)
lets you launch applications, toggle system preferences and more. This is
probably the closest thing to 'homescreen' in traditional phone OS's in
that it can be the starting point to access much of the functionality
in Sxmo. This menu lets you:

- Launch [Scripts and Applications](#strongincluded-scripts-and-applicationsstrong)
- Adjust volume
- Make/Receive [Calls and Texts](#strongcalls-and-textingstrong)
- Launch the Camera
- Connect to Wifi
- Adjust audio output device

**3. Global config menu (Config)**

The global config menu is accessible by launching the global system menu
aforementioned and selecting *Config*. This menu let you:

- Adjust system brightness
- Toggle modem monitoring, view modem information and the modem log
- Rotate the screen rotation
- Upgrade packages


## **Screen Lock**
A custom application ([sxmo_screenlock](https://git.sr.ht/~mil/sxmo-utils/tree/master/programs/sxmo_screenlock.c))
enables you to lock the screen so no tap events are processed. This application 
also allows you to enter suspend (deep sleep / CRUST). You can activate the
screen lock by tapping the volume raise key three times quickly or holding the
volume raise key down.  You will see the Pinephone's blue LED indicator activate. 

The Screenlock has three modes:

- **Screenlock display on mode**: Locks the screen and disables input; but keeps the screen on
  - Indicated by blue LED
- **Screenlock display off mode**: Locks the screen, disables input, and turns the screen off
  - Indicated by purple LED
- **Screenlock deep sleep mode**: Enters CRUST suspend / deep sleep
  - Indicated by red LED

While using the Screenlock, only the following bindings apply
(and override the [default dwm button bindings](#strongglobal-ui-controlsstrong)):

- **Volume Raise**:
  - **3 taps**: Enter screenlock deep sleep mode
- **Volume Lower**:
  - **3 taps**: Toggle between screenlock display on/off mode
- **Powerkey**:
  - **3 taps**: Exit screen lock

When you are in deep sleep mode (entered by tapping volume raise 3 times), you
can exit this mode and restore the above bindings by clicking the powerkey once.
After exiting deep sleeep mode, within 5 seconds  you should either press the
volume lower or powerkey 3 times to switch modes or exit. After 5 seconds, the
blinking stops and you will be kicked back into deep sleep mode. The purpose of
this 5 second timeout is so that if you accidently press the powerkey when the
phone is in your pocket, you won't inadvertently be kicked out of CRUST.

## **Calls and Texting**
Calling and texting is fully functional and should work out-of-the-box. Make
sure you have the modem killswitch in the enabled position and wait a little
bit after booting before trying modem functionality to allow the modem to 
connect.

Modem functionality is based on using the [dmenu menu system](#strongthe-menu-systemstrong)
and accessible through the [global system menu](#strongincluded-menusstrong).
The scripting behind the scenes works via [ModemManager](https://www.freedesktop.org/wiki/Software/ModemManager/) using the [mmcli](https://www.freedesktop.org/software/ModemManager/man/1.0.0/mmcli.8.html) command line tool.

**Calling**

To place a new call, you can use the *Dialer* entry in the [global system menu](#strongincluded-menusstrong).
You will be prompted for a number to dial. Once the call connects, a menu
will automatically be launched which let's you:

- Manage audio routing
- Send DTMF (dial) tones
- Hang up the call
- Lock the screen (via [screen lock](#strongscreen-lockstrong))

**Texting**

To view existing text message threads you can use the *Texts* entry in the
[global system menu](#strongincluded-menusstrong).  This menu will let
you tail follow a logfile for your conversation with each number. When
a new text is sent or received; the tail will automatically be updated
with the new text contents.

To compose a new text message, from the *Texts* entry you will see a
*Send a Text* entry which first prompt you for a number. After entering
the destination number you will be dropped into a vim-like editor
([vis](https://github.com/martanne/vis)) to compose your message. Once
your message is as you'd like it, exit the editor using `ZZ`/`:w`/or
by holding down (or triple clicking) the volume down key.  You will
now be taken to a new menu to confirm your message from which you can
edit/send/cancel the message.

**Monitoring for Incoming Calls/Texts**

A vital feature of a working phone is being able to receive new texts and
pickup calls. This functionality is made possible through a script that
monitors the modem every few seconds for new activity and vibrates the
phone and blinks the green LED when there is an incoming text/call. This
functionality is optional and can be toggled on/off (e.g. to have a
'silent' mode) via the [Config menu](#strongincluded-menusstrong). By
default the modem monitoring is set to off. You can tell if modem
monitoring is on as there will be an "M" icon that appears in dwm's bar.

While a call is incoming:

- The vibration motor will trigger for 3 seconds
- The green LED will trigger
- To pickup the call, open either the [global or application](#strongincluded-menusstrong) menu and you'll
  see a menu entry to pickup the call; of course this is timesensitive and this
  menu entry will only be visible while the other party's line is ringing

When a new text message comes in:

- The vibration motor will trigger rapidly in 3 intervals for 300ms
- The green LED will trigger
- To view the new text message, refer to the **Texting** section above

**Contacts System**

The Sxmo contacts system based on a plain TSV file that can be placed at
`$XDG_CONFIG_HOME/sxmo/contacts.tsv`.  This TSV file is expected to have
two columns: phonenumber, and contactname. Upon receiving a call if you
have a contact stored associated with the incoming number, the contact
name will appear instead of the number. Also contact names will appear
in the Texts and Dialer menus if they are present in the contacts TSV
file. If no `contacts.tsv` is present, or the number is missing from
this file; the contact in menus will show up as `Unknown Number`.
An `contacts.tsv` example might look like:

```
122345628	John Smith
128371642	Jeff Foo
```

**International Numbers**

Note that you should **always** prefix numbers you call out with, text to,
or add to the contact system **with their international prefix code**
but without the plus. Behind the scenes for `mmcli`, numbers always
come into the system with international prefixes from my testing. So if
you receieve a call from the number `54321` for example; it would come
into mmcli as `+154321` if this was a US number. To compensate for this
behavior, our scripts strip the plus (`+`) symbol but otherwise leave the
number *as-is*. This means if you dial, text, and store contacts *with
the internationl prefix*, you can be assured that texts / outgoing /
incoming calls will line up in regards to deduplication of contacts in
menus and text message threads will stay intact.


## **Included Scripts and Applications**
In the [global system menu](#strongincluded-menusstrong) there are entries for both applications and
scripts. 

**Included Scripts:**

- **Web Search**: Search duckduckgo with the query provided by the user (bangs work too)
- **Files**: A filebrowser that can handle opening audio and text files
- **Timer**: A simple countdown timer script that vibrates the phones upon completion
- **Youtube**: Search youtube by keyword in dmenu and then view in mpv (script based on [idiotbox](https://codemadness.org/idiotbox.html))
- **Youtube (audio)**: Search youtube by keyword in dmenu and then listen in mpv (script based on [idiotbox](https://codemadness.org/idiotbox.html))
- **Weather**: United States weather forecast (by zipcode) dmenu script
- **RSS**: Aggregates RSS feeds and let's you view by timespan dmenu script (based on [sfeed](https://codemadness.org/sfeed-simple-feed-parser.html))

**Included Applications:**

- **Surf**: The suckless minimalistic browser based on Webkit
- **Netsurf**: An alternative minimalistic browser that renders really fast
- **Firefox**: The infamous FOSS browser often symbolized by a fox
- **Sacc**: A great minimalistic gopher browser; launches by default to a good phlog aggregator
- **W3m**: A text-based browser with vim-like keybindings
- **Xcalc**: A nice (and fast) calculator app
- **St**: The suckless terminal
- **Foxtrotgps**: A minimal GPS application to help you navigate the world

## **Wifi**
At the time being the primary way to get connected to the Internet in Sxmo
is through wifi. There is a menu entry in the [global system menu](#strongincluded-menusstrong) to connect 
to wifi. This is essentially this is just a wrapper to launch `nnmtui`. Make sure
the killswitch for Wifi on your Pinephone is in the enabled position.

Mobile data should be manually for now (there is no built in menu to do this); 
so refer to [postmarketos](https://wiki.postmarketos.org/wiki/PINE64_PinePhone_(pine64-pinephone)#Modem) pinephone documentation for that aspect.

## **Audio Routing**
You can use the Audio entry in the [global system menu](#strongincluded-menusstrong)
to toggle which audio output you want to send sound to.

Note that when in a call, the audio device selected in the global system menu
won't automatically apply; rather audio will automatically be initially routed 
to the earpiece and then changeable through the in call menu. Upon the call 
ending, audio is always routed back to the headphone jack.

## **Updating and Changelog**
Sxmo's packages are currently distributed through packages in pmOS so
when new package versions are periodically pushed; your install can be 
updated through standard mechanisms using `apk`.

To update run:

```
apk update
apk upgrade
```

There is also a menu entry within the [Config menu](#strongincluded-menusstrong)
to update as well which runs the same commands as above.

For details on what changed between package versions or image releases
refer to [the changelog](https://git.sr.ht/~mil/sxmo-docs/tree/master/CHANGELOG.md).

## **User Customizable Functionality**

**Files and Folders**

<table>
  <tbody>
    <tr>
      <td><strong>Filepath</strong></td>
      <td><strong>Description</strong></td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/xinit</td>
      <td>Automatically executed script executed upon starting X.</td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/contacts.tsv</td>
      <td>
        <p>TSV file wherein each row is: contactnumber TAB contactname</p>
        <p>If unset all contacts will show up as 'Unknown Number'</p>
      </td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/sfeedrc</td>
      <td>Sfeedrc file (see <a href="https://codemadness.org/git/sfeed/file/README.html">sfeed documentation</a> used by RSS script)</td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/userscripts</td>
      <td>Directory to place user scripts which will automatically appear in the menu system</td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/hooks/ring</td>
      <td>
	<p>Executable script to run when the phone is receiving a call / rings</p>
	<p>This script is called with "$1" set to the incoming number and contact name.</p>
      </td>
    </tr>
    <tr>
      <td>$XDG_CONFIG_HOME/sxmo/hooks/sms</td>
      <td>
	<p>Executable script to run when the phone is receiving a text</p>
	<p>This script is called with "$1" set to the incoming number and contact name.</p>
      </td>
    </tr>
  </tbody>
</table>

Note: `$XDG_CONFIG_HOME` by default is equal to `~/.config`

**Environment Variables**

The following enviroment variables can be set:

<table>
  <tbody>
    <tr>
      <td><strong>Environment variable</strong></td>
      <td><strong>Description</strong></td>
    </tr>
    <tr>
      <td>$TERM</td>
      <td>Terminal to launch on double-clicking power button and used in scripts. Defaults to `st`.</td>
    </tr>
    <tr>
      <td>$BROWSER</td>
      <td>Browser to launch on triple-clicking/holding power-button and used in scripts. Defaults to `surf`.</td>
    </tr>
    <tr>
      <td>$KEYBOARD</td>
      <td>Keyboard to launch on single-clicking power button and used in scripts. Defaults to `svkbd-sxmo`.</td>
    </tr>
    <tr>
      <td>$EDITOR</td>
      <td>Editor to use to handle files (partial support; full support plans for composing texts etc). Defaults to `vis`.</td>
    </tr>
    <tr>
      <td>$SXMO_RECDIR</td>
      <td>Directory that the Record script will save recordings to.</td>
    </tr>
    <tr>
      <td>$SXMO_SUBREDDITS</td>
      <td>Subreddits (comma-separated) to appear in menu for Reddit script.</td>
    </tr>
    <tr>
      <td>$SXMO_GPSLOCATIONSFILES</td>
      <td>
        <p>Files of GPS coordinates to populate the locations menu in the foxtrotgps menu.</p>
        <p>Each file is expected to be a tsv; the first entry being the location; the second being lat, lon pair.</p>
      </td>
    </tr>
  </tbody>
</table>

**User-customizable xinitrc**

For setting the above Enviroment Variables and also to launch custom
programs upon starting X you can use the user customizable `xinit`
described in the Files and Folders section.  An example you might use
to get started could look like:

```sh
#!/usr/bin/env sh
# Launch firefox instead of surf triple-clicking/holding down powerdown
export BROWSER=firefox

# Prepopulate Subreddits menu with custom subreddits
export SXMO_SUBREDDITS="asmr unixporn wtf"

# Launch st that says hello world on starting enviroment
st -e sh -c 'echo hello world!; read' &
```

Place the contents above into `~/.config/sxmo/xinit` and restart X and
customize away.

**User Scripts**

User scripts are custom scripts the user can run via the [global
system menu](#strongincluded-menusstrong). To add your own custom
userscript, create the `$XDG_CONFIG_HOME/sxmo/userscripts` directory
and place your `.sh` scripts in the `userscripts` directory. If the
`userscripts` folder is populated with atleast one script, a new
menu item called `Userscripts` will appear in the [global system
menu](#strongincluded-menusstrong). Note, Userscripts should be set to
be executable.

For examples of scripts Sxmo users have made for their mobile devices, see: 

- [~anjan/sxmo-userscripts](https://git.sr.ht/~anjan/sxmo-userscripts).

**Further Customization**

Much of Sxmo's core-functionality in regards to menus
are built out via plain shell scripts. So further
cutomization should be simple. See sxmo-util's [scripts
directory](https://git.sr.ht/~mil/sxmo-utils/tree/master/scripts)
to get a better sense of how things are put together. You can edit
the scripts on your system for temporary fixes and please consider
[contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md)
your changes if you believe your modifications may be useful to other
users.
