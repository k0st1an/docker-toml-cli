FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-pip
RUN pip3 install toml-cli==0.1.3
RUN apt-get remove -y python3-pip && apt-get autoremove -y && apt-get autoclean && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "toml" ]
