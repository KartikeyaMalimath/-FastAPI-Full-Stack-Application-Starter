# FastAPI Full-Stack Application Starter

This repository serves as a starter kit for building a full-stack web application using FastAPI, Python 3.10+, Jinja2, Vue.js, and Docker. Kickstart your full-stack development journey with this template, incorporating the power of FastAPI on the backend and Vue.js on the frontend with containerization for seamless scalability.

## Getting Started

### Prerequisites

- [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
- [Docker](https://docs.docker.com/get-docker/)
- [Node.js and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/fastapi-fullstack-starter.git
   ```
  

2. Run the setup script:
     ```bash
    cd fastapi-fullstack-starter
    bash setup_environment.sh
    ```
 
3. Open the project in PyCharm:

    ```bash
    pycharm-community .
    ```

### Development
   
  The FastAPI backend is located in the fastapi_project directory.
  Vue.js frontend files are yet to be added. Customize the frontend to suit your project requirements.

### Docker
   
  Build and run the Docker container:

  ```bash
  docker build -t my_fastapi_app .
  docker run -p 80:80 my_fastapi_app
  ```

Visit [http://localhost:8000](http://localhost:8000) to see your FastAPI application in action.

### License
  
  This project is licensed under the [MIT License](https://github.com/KartikeyaMalimath/FastAPI-Full-Stack-Application-Starter/blob/main/LICENSE).
