FROM node:latest
ARG ENABLE_TS

RUN if [ $ENABLE_TS = "true" ] ; then apt-get install curl && \
        curl -sL https://deb.nodesource.com/setup_9.x | bash -  && \
        apt-get install nodejs  &&\
        curl -L https://www.npmjs.com/install.sh | sh && \
        npm init --yes && npm install -g typescript --save-dev && npm install --save-dev @types/jquery ; fi


WORKDIR /var/www

COPY init_ts.sh /usr/bin/init_ts.sh
RUN chmod +x /usr/bin/init_ts.sh
CMD init_ts.sh $ENABLE_TS