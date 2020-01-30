FROM python:3.7

WORKDIR /src

COPY requirements.txt ./
RUN apt update
RUN apt install -y zsh vim npm nano ranger tmux tree \
    postgresql postgresql-contrib \
    redis-server nginx \
    llvm \
    xz-utils \
    gnumeric \
    supervisor


RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN chsh -s $(which zsh)

RUN pip install -r requirements.txt
COPY ./src /src

ARG UID=1000
ARG GID=1000
USER ${UID}:${GID}


ENTRYPOINT ["python", "./app/manage.py"]
CMD ["runserver", "0.0.0.0:5000"]