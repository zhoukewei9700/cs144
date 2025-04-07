FROM ubuntu:24.04

ARG USR=zhoukewei9700
ARG EMAIL=505977910@qq.com

ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN echo 'root:Zkw0907genius' | chpasswd \
    && apt-get update -y \
    && apt-get install -y sudo vim wget git fish \
    && apt-get clean -y \
    && userdel -rf ubuntu \
    && useradd -ms /bin/fish ${USR} \
    && usermod -aG sudo root \
    && usermod -aG sudo ${USR} \
    && echo 'zhoukewei9700:Zkw0907genius' | chpasswd

USER ${USR}

COPY --chown=${USR}:${USR} ./*.sh /home/${USR}/
RUN git config --global user.name "${USR}" \
    && git config --global user.email "${EMAIL}" \
    && mkdir -p /home/${USR}/cs144

RUN curl -sL https://get.oh-my.fish | fish

WORKDIR /home/${USR}/
