# About
Docker distroless build of Perl6. In order to create this build [Google distroless base](https://github.com/GoogleContainerTools/distroless/blob/master/base/README.md) image was used.

# Tags

Current mapping of version is the following:

branch | tag
-------|----
master | latest
2018.12 | v2018.12

# How to use

```
# docker run --rm -it imcono/distroless-perl6:latest -e '"hello, world".say'
hello, world
```

# License
View [license](https://github.com/rakudo/star/blob/master/LICENSE) information for the software contained in this image.

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
