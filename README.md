Music21 Notebooks
=================

Configure a Docker Image with Jupyter notebooks,
the music21 musicology toolkit and optional packages for
rendering scores and midi files inline. 

Docker Build
============

```
docker build --tag tfliss/music21_notebooks .

Docker Run
==========

```
docker run -p 8888:8888 -v `pwd`/work:/home/jovyan/work tfliss/music21_notebooks
```

Dependencies
============

[https://web.mit.edu/music21/][music21 musicology toolkit]
[http://lilypond.org/][LilyPond music engraving software]
[https://musescore.org][MuseScore music notation software]
[https://jupyter.org/][Jupyter notebooks]

