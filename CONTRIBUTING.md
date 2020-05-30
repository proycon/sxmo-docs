# **Sxmo**: Simple X Mobile - *Contributing*

---

[Project Overview](https://sr.ht/~mil/Sxmo) | [Install Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/INSTALLGUIDE.md) | [User Guide](https://git.sr.ht/~mil/sxmo-docs/tree/master/USERGUIDE.md) | [Contributing](https://git.sr.ht/~mil/sxmo-docs/tree/master/CONTRIBUTING.md) | [Images](http://images.lrdu.org/) | [Alpine Repository](http://sxmo.lrdu.org/alpine_repository/master) | [Demo Videos](http://media.lrdu.org/sxmo_pinephone_demos)

---

The Sxmo project from a development point of view is a combination of a few different components:

1. [sxmo-utils](http://git.sr.ht/~mil/sxmo-utils): A catchall repository for scripts, configuration files, and C programs that hold Sxmo together. This contains things like the modem scripts, menu scripts, screenlock program, setuid programs for controlling the PP LEDs, brightness, etc, and all other scripts.
2. [lisgd](http://git.sr.ht/~mil/lisgd): A custom piece of software for gestures built from scratch for Sxmo
3. [Suckless forks](https://sr.ht/~mil/Sxmo/sources): Forks of [Suckless](http://suckless.org) software which has been mobile optimized and designed to fit within the larger Sxmo project
4. [sxmo-alpine](http://git.sr.ht/~mil/sxmo-alpine): Alpine APKBUILDs to create packages for (1), (2), and (3) as well as a few extra (upstream-based) packages; also contains CI to build these packages on sr.ht's infra and upload to sxmo.lrdu.org/alpine_repository
5. [sxmo-image-builder](http://git.sr.ht/~mil/sxmo-image-builder): CI that builds images for the Pinephone on sr.ht infra via pmbootstrap

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
