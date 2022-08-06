# Getting started

The API needs to be running when the client builds. Start the API and related containers first:

    docker-compose build api
    docker-compose up -d api
    
Then build and run the client:

    docker-compose build client
    docker-compose up -d client

Optionally populate data by running the following commands:

    docker-compose build data-setup
    docker-compose up data-setup
    
Access the local platform via `http://localhost:3000`.
