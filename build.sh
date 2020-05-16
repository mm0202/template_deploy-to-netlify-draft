stage=$1

cp src/index.html public/index.html
sed -i "s/{stage}/$stage/g" public/index.html
sed -i "s/{date}/$(date)/g" public/index.html
