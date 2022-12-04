deploy

heroku git:remote -a dbcells-staging

 

heroku container:login

 
heroku container:push web --app dbcells-staging
heroku container:release web --app dbcells-staging

heroku container:release web release --app dbcells-staging

antes de dar up, dar um down
docker-compose down --volumes --rmi all

docker-compose exec fuseki bash

tar -czvf cell.tar.gz cells/

https://devcenter.heroku.com/articles/application-offline#restart-your-application

forçar atualizar o push no container


heroku ps

heroku restart