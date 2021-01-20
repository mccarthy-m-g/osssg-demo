FROM rocker/binder:4.0.2
LABEL maintainer='Michael_McCarthy'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/mccarthy-m-g/osssg-demo/raw/master/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2021-01-19/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
