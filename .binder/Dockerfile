FROM rocker/binder:3.6.0
LABEL maintainer='Michael_McCarthy'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/mccarthy-m-g/osssg-demo/raw/main/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2019-06-03/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
