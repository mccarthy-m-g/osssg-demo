FROM rocker/binder:3.6.0
LABEL maintainer='Michael_McCarthy'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/mccarthy-m-g/osssg-demo/raw/main/DESCRIPTION && R -e "renv::restore(repos = c(CRAN='https://packagemanager.rstudio.com/all/__linux__/bionic/298'))"

RUN rm DESCRIPTION.1; exit 0
