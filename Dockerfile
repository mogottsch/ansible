FROM manjarolinux/base

RUN pacman -S ansible --noconfirm

RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN useradd -m moritz -G wheel
USER moritz

WORKDIR /home/moritz

COPY . .
CMD ["ansible-playbook", "local.yml"]