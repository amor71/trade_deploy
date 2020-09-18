# Docker setup for `LiuAlgoTrader`

The project exposes container implementation for LiuAlgoTrader project. It's intended to kick-start strategy development, as well as exposing a full container/service oriented deployment for a full trading system.
 

### Available Docker implementations

* `liu-in-a-box` : a single container implementation that encapsulating database and the trading platform, for first time users.
* `liu-db-in-a-box`: a ready to use database for LiuAlgoTrader

## `liu-in-a-box` quick-start

### Prerequisites

1. make sure you have a locally installed docker (https://docs.docker.com/get-docker/) ,
2. Setup your PAPER or LIVE trading account w/ Alpaca Markets https://alpaca.markets/  .

### Installation & Setup

1. Execute `docker pull amor71/liu-in-a-box`,
2. Download the file https://github.com/amor71/trade_deploy/blob/master/liu-in-a-box/env.list to the folder in which you intend to run your strategies (eg. ~/my-liu/).
3. Make you to have a valid `tradeplan.toml` file in the same directory, as well as set-up `LiuAlgoTrader` environment variables. For more details & examples see here https://liualgotrader.readthedocs.io/en/latest/Configuration.html .

### Running your local `liu-in-a-box`

Execute `docker run -v <local_folder>:/opt/trader --env-file env.list --env DSN=postgresql://docker:docker@localhost/tradedb liu-in-a-box`

## `liu-db-in-a-box` quick-start 

### Prerequisites

1. make sure you have a locally installed docker (https://docs.docker.com/get-docker/) ,
2. Setup your PAPER or LIVE trading account w/ Alpaca Markets https://alpaca.markets/  .
3. recommanded: a local installation of `psql` (PostgreSQL client - https://www.postgresql.org/docs/12/app-psql.html) 

### Installation & Setup

1. Execute `docker pull amor71/liu-db-in-a-box`,
2. Execute `docker run -P liu-db-in-a-box`,

### Recommanded step: validate access

1. Execute `docker ps` and find the local port,
2. Execute `\psql -h localhost -p <local-port> -U docker tradedb` (password: `docker`)

### Using w/ _LiuAlgoTrader_



