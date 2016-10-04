# docker-bitcore_insight_dash

dockerized bitcore insight-api for dash - alpha version

# requirements

    2GB ram to build
    1GB ram to run

# build

    git clone https://github.com/CoinFabrik/docker-bitcore_insight_dash.git --branch jaxx --single-branch
    cd docker-bitcore_insight_dash
    docker build -t dashpay/bitcore_insight:1.1 .
    # go have a sandwich, takes 30+ minutes
    # verify build completed successfully, then
    docker create -p 2052:3001 --name dash_insight --volume $HOME/dash-data:$HOME/.bitcore dashpay/bitcore_insight:1.1

# start/stop

    docker start dash_insight
    docker stop dash_insight
