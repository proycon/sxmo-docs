# **Sxmo**: Simple X Mobile - *Install Guide*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Alpine Repository](http://sxmo.lrdu.org/alpine_repository/master) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos)

---

## **Prebaked Images**

The easiest way to get started using Sxmo is just to grab a prebaked image from our image release page.
These images are built via our [continuous integration system](https://builds.sr.ht/~mil/sxmo-image-builder) 
based on the latest state of our [alpine repository](http://sxmo.lrdu.org/alpine_repository).  These
images under the hood are based on [postmarketOS](http://postmarketos.org).

**Install Steps:**

1. Download the latest release image from: [Sxmo Pinephone Images](http://images.lrdu.org/)
2. Extract the image: `unxz sxmo-pinephone*.xz`
3. Write  the image to your SD card: `dd if=sxmo-pinephone*.img of=/dev/mmcblkp0`
4. Pop the SD card into your Pinephone and see the [Userguide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md)
5. Please note, the default username/password combination is: `mo`/`mo`

## **Alternative: Using the Packages for Alpine Linux** (new or existing pmOS install)

If you'd like to setup full-disk encryption or want to customize your install further then the prebaked images can provide, you use an existing or setup a new pmOS install and then just add the Sxmo Alpine repository.

- **First**, if you don't already have a pmOS install, to setup a base install:
  1. Download and install [pmbootstrap](https://gitlab.com/postmarketOS/pmbootstrap)
  2. Run `pmbootstrap init` on your host machine and specify the config according to your needs but make sure you choose "none" as your ui
  3. Boot up your phone post install, you should see a login prompt (TTY) when your phone is ready to be accessed via ssh
  4. Connect your phone to your PC via USB and run `ssh <YOUR-USERNAME>@172.16.42.1`. **Note: If you are unable to ssh into your phone, follow [postmarketos' troubleshooting instructions](https://wiki.postmarketos.org/wiki/USB_Network)**
  5. Follow [postmarketOS' USB Internet instructions](https://wiki.postmarketos.org/wiki/USB_Internet) to enable internet connectivity for your device
- **Next**, to install Sxmo, you just need to add our repository and install the single `sxmo-ui` metapackage, this can be done like:
  1. `echo "http://sxmo.lrdu.org/alpine_repository/master" >> /etc/apk/repositories`
  2. `wget "https://git.sr.ht/~mil/sxmo-image-builder/blob/master/m%40milesalan.com-5e6e8e01.rsa.pub" -O "/etc/apk/keys/m@milesalan.com-5e6e8e01.rsa.pub"`
  3. `apk update`
  4. `apk add sxmo-ui`
