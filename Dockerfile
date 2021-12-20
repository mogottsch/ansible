FROM manjarolinux/base

RUN pacman -S ansible --noconfirm

RUN useradd -m moritz
USER moritz

WORKDIR /home/moritz

COPY . .
CMD ["ansible-playbook", "local.yml"]