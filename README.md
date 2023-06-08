docker build -t quay.io/globex-sentiment-analysis/product-reviews-db:latest .

docker push quay.io/globex-sentiment-analysis/product-reviews-db:latest 

POSTGRESQL_USER="globex"

POSTGRESQL_DATABASE="reviews"

POSTGRESQL_PASSWORD="globex"

docker run -e POSTGRESQL_USER=globex -e  POSTGRESQL_DATABASE=reviews -e POSTGRESQL_PASSWORD=globex  quay.io/globex-sentiment-analysis/product-reviews-db:latest 