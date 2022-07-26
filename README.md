# Getting started

The API needs to be running when the client builds. Start the API and its dependent services first:

    docker-compose build api
    docker-compose up -d api
    
Then build and run the client:

    docker-compose build client
    docker-compose up -d client
    
Access the local platform via `http://localhost:3000`
