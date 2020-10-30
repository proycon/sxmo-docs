# **Sxmo**: Simple X Mobile - *Contributing*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos) | [Changelog](https://git.sr.ht/~mil/sxmo-docs/tree/master/CHANGELOG.md)

---

The Sxmo project from a development point of view is a combination of a few different components:

1. [sxmo-utils](http://git.sr.ht/~mil/sxmo-utils): A catchall repository for scripts, configuration files, and C programs that hold Sxmo together. This contains things like the modem scripts, menu scripts, screenlock program, setuid programs for controlling the PP LEDs, brightness, etc, and all other scripts.
2. [lisgd](http://git.sr.ht/~mil/lisgd): A custom piece of software for gestures built from scratch for Sxmo
3. [Suckless forks](https://sr.ht/~mil/Sxmo/sources): Forks of [Suckless](http://suckless.org) software which has been mobile optimized and designed to fit within the larger Sxmo project
4. [sxmo-image-builder](http://git.sr.ht/~mil/sxmo-image-builder): CI that builds images for the Pinephone on sr.ht infra via pmbootstrap

All of the Sxmo project source repositories can be viewed at:

[Project source repositories](https://sr.ht/~mil/Sxmo/sources)


## **Submitting Bugs or Feature Requests**
We use the bug tracker at:

[https://todo.sr.ht/~mil/sxmo-tickets](https://todo.sr.ht/~mil/sxmo-tickets)

Please search the existing tickets before submitting a new ticket.
You are free to put in feature requests here or pull tickets off here to get ideas for patches.

## **Submitting Patches or General Discussion**
We use a single mailing list for patch submission and discussion of the above subcomponents of the Sxmo project.

The mailing list is at:

[https://lists.sr.ht/~mil/sxmo-devel](https://lists.sr.ht/~mil/sxmo-devel)

If you're new to development using `git-send-email` don't be discouraged and please still contribute!
You can check out the guide at: [https://git-send-email.io/](https://git-send-email.io/) for some
tips on how to get started using git-send-email.

## **IRC Channel**
Our IRC channel for general adhoc development dicussion is:

`#sxmo` on `irc.freenode.net`

# Information for Maintainers

## New Release

When cutting a new release of sxmo:

1. Tag the release in git (sxmo-utils, sxmo-dwm, etc.)
2. Send a pull request to pmaports to update the changed sxmo packages
3. Send an email to the mailing list (sxmo-announce) containing atleast the following info:
	1. New sxmo release will be available soon!
	2. Description of which repos have been updated (sxmo-utils, sxmo-dwm, etc.)
	3. A paragraph detailing major changes
	4. An Annotated Summary of Changes - Thank the contributors
	5. Description of breaking changes
	6. Where to get the new images or how to update from an existing release
	7. Any other pmos related issues (update-u-boot, updating modem firmware, etc.)


Note: Versioning numbers for suckless forks follow the scheme: sucklessv.sxmov
- For example, with the dmenu fork, checkout 4.9 as upstream-4.9 and 
commit new versions as 4.9.x; wherein x is the Sxmo version.



## Accepting a Patch

1. Contributor submits a patch
2. Maintainer A assign themselves to the patch and tests the patch
3. If the patch passes testing, Maintainer A can ask Maintainer B if they're unsure about the code quality.
4. Sign the commit with `git am -s`

Note: Unless the change is trivial, the maintainer must send their 
change to mailing list to be reviewed by another maintainer or a member
of the sxmo community

