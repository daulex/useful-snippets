#!/bin/bash

ccd () {
  cd "$HOME/Sites/$1/wp/wp-content/themes/$1/"
}


ccdr () {
  cd "$HOME/Sites/$1/wp/wp-content/themes/$1/"
  subl .
  gg
}

ccdra () {
  cd "$HOME/Sites/$1/wp/wp-content/themes/awave-flexible-clean/"
  subl .
  gg
}
