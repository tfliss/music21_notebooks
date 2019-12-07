FROM jupyter/scipy-notebook

RUN pip install music21

USER root
RUN apt-get update; \
    apt-get install -y software-properties-common; \
    add-apt-repository ppa:mscore-ubuntu/mscore-stable; \
    apt-get update; \
    apt-get install -y lilypond; \
    apt-get install -y musescore; \
    rm -rf /var/lib/apt/lists/*
USER jovyan
COPY ./music21rc /home/jovyan/.music21rc
ENV QT_QPA_PLATFORM=offscreen
#RUN python -c "from music21 import environment; us = environment.UserSettings(); us['musescoreDirectPNGPath'] = '/home/jovyan/work'; us['musicxmlPath'] = '/usr/bin/mscore'; us['lilypondPath'] = '/usr/bin/lilypond';"
