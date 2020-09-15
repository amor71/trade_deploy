# Docker orchestration for `LiuAlgoTrader`

The project exposes container implementation for LiuAlgoTrader project. It's intended to kick-start strategy development, as well as exposing a full container/service oriented deployment for a full trading system.
 

### Available Docker implementations

* `liu-in-a-box` : a single container implementation that encapsulating database and the trading platform, for first time users.


## `liu-in-a-box` quick-start

### prerequisites

make sure you have a locally installed docker (https://docs.docker.com/get-docker/).

### Installation

1. execute `docker pull amor71/liu-in-a-box`. 
2. download the file 
 

building docker:
docker build . -t liu

prep:

place the `tradeplan.toml` @ <local_folder>
running:

docker run -v <local_folder>:/opt/trader --env-file env.list --env DSN=postgresql://docker@localhost/tradedb liu
