FROM composer:lts

RUN apk update
# RUN apk add --no-cache --no-interactive sudo
# RUN apk add --no-cache --no-interactive rsync

ARG USERNAME=dev
ARG GID=1000
RUN addgroup -g $GID $USERNAME
## Check: `cat /etc/group`
ARG UID=1000
RUN adduser -u $UID -G $USERNAME -D $USERNAME
## Check: `cat /etc/passwd`

ENV COMPOSER_HOME=/home/$USERNAME/.composer
ENV PATH="$COMPOSER_HOME/vendor/bin:$PATH"

RUN mkdir -p $COMPOSER_HOME \
    && chown -R $USERNAME:$USERNAME $COMPOSER_HOME

USER $USERNAME

RUN /usr/local/bin/composer global require laravel/installer

WORKDIR /app/
