# **Sxmo**: Simple X Mobile - *Install Guide*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Alpine Repository](http://sxmo.lrdu.org/alpine_repository) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos)

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

## **Using the Packages for Alpine Linux** (use a pre-existing pmOS install)

If you don't want to use a prebaked image or already have a barebones Alpine or pmOS install, 
you can instead use the `sxmo-ui` package from our alpine repository directly. A single 
meta-package `sxmo-ui` is responsible for installing all of Sxmo's subpackages and required
dependencies.

The install process for an existing Alpine or pmOS install looks like:

```
echo "http://sxmo.lrdu.org/alpine_repository/master" >> /etc/apk/repositories
cd /etc/apk/keys && wget "https://git.sr.ht/~mil/sxmo-image-builder/blob/master/m%40milesalan.com-5e6e8e01.rsa.pub"
apk update
apk add sxmo-ui
```
