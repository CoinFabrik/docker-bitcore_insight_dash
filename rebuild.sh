echo 'Removing previously running container'
docker stop dash_insight
docker rm dash_insight

echo 'Building dashpay/bitcore_insight:1.1'
docker build -t dashpay/bitcore_insight:1.1 .

echo "Creating dash_insight"
docker create -p 2052:3001 --volume $HOME/dash-data:$HOME/.bitcore --name dash_insight dashpay/bitcore_insight:1.1

echo "Running dash_insight"
docker start dash_insight
