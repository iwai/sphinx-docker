
FROM python:2.7

MAINTAINER Yuji Iwai <iwai.ug@gmail.com>

RUN echo "\n\
Sphinx>=1.2.2,<2.0\n\
sphinxcontrib-httpdomain>=1.2.1,<1.3\n\
sphinx-rtd-theme>=0.1.6,<1.0\n\
sphinxcontrib-actdiag>=0.8.5,<1.0\n\
sphinxcontrib-blockdiag>=1.5.5,<2.0\n\
sphinxcontrib-nwdiag>=0.9.5,<1.0\n\
sphinxcontrib-seqdiag>=0.8.5,<1.0\n\
" >> /srv/requirements.txt && pip install -q -r /srv/requirements.txt

VOLUME ["/srv"]

WORKDIR /srv
