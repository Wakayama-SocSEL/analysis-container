FROM python:latest

RUN useradd -m user

RUN apt update && apt install -y\
  gosu\
  zsh\
  && apt clean

# starship
RUN wget "https://starship.rs/install.sh"\
  && sh install.sh -y\
  && rm install.sh
RUN echo 'eval "$(starship init zsh)"' >> /home/user/.zshrc

USER user

# poetry
RUN curl -sSL "https://install.python-poetry.org" | python3 -
ENV PATH $PATH:/home/user/.local/bin

# vscode
RUN wget -O - "https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64" | tar -xzC /home/user -f -
