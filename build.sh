#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="A pixel-art 3D street cricket game in the browser. Four grounds with their own house rules: bat, bowl, or play 2 players.">\n'
  printf '<meta property="og:title" content="Galli Cricket">\n<meta property="og:description" content="Pixel-art 3D gully cricket in your browser. Ball in the house is out.">\n'
  printf '<meta name="theme-color" content="#1d1a17">\n<link rel="icon" href="data:,">\n'
  cat game.html
  printf '\n</html>\n'
} > index.html
