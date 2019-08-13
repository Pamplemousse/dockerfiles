FROM debian:stable-slim

RUN apt-get update

RUN apt-get install -y \
    python3-pygments \
    texlive-latex-base texlive-science \
    texlive-latex-extra texlive-fonts-extra \
    texlive-lang-french texlive-bibtex-extra \
    latexmk

RUN apt-get install -y uuid-runtime

USER 1000:1000
