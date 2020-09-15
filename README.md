# trade_deploy
Docker orchestration  &amp; Deployment fo liu trading framework



TBD
===

building docker:
docker build . -t liu

prep:

place the `tradeplan.toml` @ <local_folder>
running:

docker run -v <local_folder>:/opt/trader --env-file env.list --env DSN=postgresql://docker@localhost/tradedb liu
