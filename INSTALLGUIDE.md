# **Sxmo**: Simple X Mobile - *Install Guide*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos)

---

## **Prebaked Images**

The easiest way to get started using Sxmo is just to grab a prebaked image
from our image release page.  These images are built via our [continuous
integration system](https://builds.sr.ht/~mil/sxmo-image-builder) based
on the latest versioned packages.  These images under the hood are based
on [postmarketOS](http://postmarketos.org) and are identical to what you'd
get if you were to manually run `pmbootstrap` locally and chose Sxmo as
your selected UI.

**Install Steps:**

1. Download the latest release image from: [Sxmo Pinephone Images](http://images.lrdu.org/)
2. Extract the image: `unxz sxmo-pinephone*.xz`
3. Write  the image to your SD card: `dd if=sxmo-pinephone*.img of=/dev/mmcblkp0`
4. Pop the SD card into your Pinephone and see the [Userguide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md)
5. Please note, the default username/password combination is: `mo`/`mo`
6. Also note, the first time you boot up your SD card with Sxmo; pmOS will resize
   the root filesystem partition to the full size of the SD card. The time this takes
   is proportional to the size of the SD card, so if you use a large card expect
   this to take a few minutes - this is a one-time process and subsequent boots
   will be faster.

## **Alternative: Use a New or existing pmOS install**

If you'd like to setup full-disk encryption or want to customize your
install further then the prebaked images can provide, you can install
the `postmarketos-ui-sxmo` package directly for an existing or new pmOS
install instead.

Refer to the [pmOS installation guide
documentation](https://wiki.postmarketos.org/wiki/Installation_guide)
and when using pmbootstrap make sure to select Sxmo as your UI.
