# Getting Started

To clone this repository along with its submodules, run the following command:
    
    git clone --recurse-submodules https://github.com/ajdhefley/rideit-dev

If you have already cloned the repository but did not include the submodules, you can initialize and/or update them with:
    
    git submodule update --init --recursive

# Project Details

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
