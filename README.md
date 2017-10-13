docker build -t freezippoinc/backend_app -f src/Dockerfile  .
docker create -e RAILS_ENV=development -e RAILS_DB_URL="postgresql://test:test@172.17.0.1/freezippo_inc" --name testbackend freezippoinc/backend_app:latest 
docker start testbackend
