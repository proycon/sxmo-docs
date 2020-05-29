#!/usr/bin/env sh

IMAGERELEASEDATES="$(echo "
    0.1.2 ^ 2020-05-25 ^ 20:00:00
    0.1.1 ^ 2020-05-23 ^ 22:00:00
    0.1.0 ^ 2020-05-20 ^ 20:00:00
" | grep .)"

SOURCES="$(echo "
  sxmo-utils  ^ http://git.sr.ht/~mil/sxmo-utils
  sxmo-dwm    ^ http://git.sr.ht/~mil/sxmo-dwm
  sxmo-dmenu  ^ http://git.sr.ht/~mil/sxmo-dmenu
  sxmo-st     ^ http://git.sr.ht/~mil/sxmo-st
  sxmo-surf   ^ http://git.sr.ht/~mil/sxmo-surf
  sxmo-svkbd  ^ http://git.sr.ht/~mil/sxmo-svkbd
  lisgd       ^ http://git.sr.ht/~mil/lisgd
" | grep .)"

cloneandiffgen() {
  cd "$1"
  PAGER=cat
  echo "$SOURCES" | while IFS= read -r sourcemeta ; do
    PRJ=$(echo $sourcemeta | cut -d^ -f1 | tr -d " ")
    SRC=$(echo $sourcemeta | cut -d^ -f2 | tr -d " ")
    echo "### $PRJ:"
    git clone $SRC $PRJ >&2
    cd $PRJ
    TAGS="$(git tag --color=never | sort -rn)"
    FUTURETAG=""
    echo "$TAGS" | while IFS= read -r TAG; do
      TAGPUBDATE="$(git log -1 --format=%aI $FUTURETAG)"
      echo "$FUTURETAG" | grep . >/dev/null && echo "#### $TAG -> $FUTURETAG (Published: $TAGPUBDATE)"
      echo "$FUTURETAG" | grep . >/dev/null && git log --color=never $TAG..$FUTURETAG --abbrev-commit --pretty=format:"- %h%x09%an: %s"
      echo "$FUTURETAG" | grep . >/dev/null && echo -e "\n"
      FUTURETAG="$TAG"
    done
    cd ../
  done
}

imageshistgen() {
  cd "$1"
  PAGER=cat

  echo "$IMAGERELEASEDATES" | while IFS= read -r imgmeta; do    
    VER=$(echo $imgmeta | cut -d^ -f1 | tr -d " ")
    DATE=$(echo $imgmeta | cut -d^ -f2 | tr -d " ")
    TIME=$(echo $imgmeta | cut -d^ -f3 | tr -d " ")

    echo -n "- **$VER:** "
    FIRST=TRUE
    echo "$SOURCES" | while IFS= read -r sourcemeta ; do
      PRJ=$(echo $sourcemeta | cut -d^ -f1 | tr -d " ")
      cd $PRJ
      LATESTTAG="$(
        git log --tags --simplify-by-decoration --pretty="format:%ai %d" -a | 
        awk -F' ' "\"${DATE}${TIME}\" > \$1\$2" |
        head -n 1 | 
        grep -oE 'tag:[^,)]+' |
        cut -d: -f2 |
        tr -d ' '
      )"
      echo $FIRST | grep TRUE > /dev/null || echo -n " / "
      echo -n "$PRJ:$LATESTTAG"
      FIRST=false
      cd ../
    done
    echo ""
  done
}

genreleasespage() {
  echo "# **Sxmo**: Simple X Mobile - *Changelog*"
  WORKDIR="$(mktemp -d)"
  PKGS="$(cloneandiffgen $WORKDIR)"
  IMGS="$(imageshistgen $WORKDIR | sed -E 's#/$\s*##g')"

  echo "## Image Releases:"
  echo "$IMGS"

  echo ""
  echo "## Packages:"
  echo "$PKGS"
}

$@