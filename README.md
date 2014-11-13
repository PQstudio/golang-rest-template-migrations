schema migrations:
docker run --rm -e DB_URL="tcp:mariadb.service:3306*aria/aria/qazxsw21" -v $(pwd):/opt/db gregory90/goose -env=default -path=db/migrations up

dev fixtures:
docker run --rm -e DB_URL="tcp:mariadb.service:3306*aria/aria/qazxsw21" -v $(pwd):/opt/db gregory90/goose -env=default -path=db/dev up

delete tables:
docker run --rm -e DB_URL="tcp:mariadb.service:3306*aria/aria/qazxsw21" -v $(pwd):/opt/db gregory90/goose -env=default -path=db/dev down
