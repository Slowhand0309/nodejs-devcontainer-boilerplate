FROM node:22.17.0
LABEL maintainer="Slowhand0309"

ARG username=vscode
ARG useruid=1000
ARG usergid=${useruid}

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        sudo \
        ca-certificates \
        --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    # Delete node user with uid=1000 and create vscode user with uid=1000
    && userdel -r node \
    && groupadd --gid ${usergid} ${username} \
    && useradd -s /bin/bash --uid ${useruid} --gid ${usergid} -m ${username} \
    && echo ${username} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${username} \
    && chmod 0440 /etc/sudoers.d/${username}

USER ${username}