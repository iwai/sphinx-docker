
FROM python:3.6

MAINTAINER Yuji Iwai <iwai.ug@gmail.com>

RUN echo "\n\
Sphinx>=2.3.1,<3.0\n\
sphinxcontrib-httpdomain\n\
sphinx-rtd-theme\n\
sphinxcontrib-actdiag\n\
sphinxcontrib-blockdiag\n\
sphinxcontrib-nwdiag\n\
sphinxcontrib-seqdiag\n\
" >> /srv/requirements.txt && pip install -q -r /srv/requirements.txt

VOLUME ["/srv"]

WORKDIR /srv
