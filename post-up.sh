bundle install
yarn install
apk update && apk add -u yarn
rm -f tmp/pids/server.pid
rails s -b 0.0.0.0 -p 3000
