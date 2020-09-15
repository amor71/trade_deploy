# Docker orchestration for `LiuAlgoTrader`

The project exposes container implementation for LiuAlgoTrader project. It's intended to kick-start strategy development, as well as exposing a full container/service oriented deployment for a full trading system.
 

### Available Docker implementations

* `liu-in-a-box` : a single container implementation that encapsulating database and the trading platform, for first time users.


## `liu-in-a-box` quick-start

### prerequisites

make sure you have a locally installed docker (https://docs.docker.com/get-docker/).

### Installation & Setup

1. Execute `docker pull amor71/liu-in-a-box`,
2. Download the file https://github.com/amor71/trade_deploy/blob/master/liu-in-a-box/env.list to the folder in which you intend to run your strategies (eg. ~/my-liu/).
3. Make you to have a valid `tradeplan.toml` file in the same directory, as well as set-up `LiuAlgoTrader` environment variables. For more details & examples see here https://liualgotrader.readthedocs.io/en/latest/Configuration.html .

### Running your local `liu-in-a-box`

Execute `docker run -v <local_folder>:/opt/trader --env-file env.list --env DSN=postgresql://docker@localhost/tradedb liu-in-a-box`
