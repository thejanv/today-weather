# React Weather App with Docker and Nginx

This project demonstrates how to build and deploy a React-based weather application using Docker for containerization and Nginx as a reverse proxy server.

## Prerequisites

- Docker installed on your machine ([Docker Installation Guide](https://docs.docker.com/get-docker/))

## Getting Started

Follow these steps to get the project up and running on your local machine:

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd <repository-directory>
2. **Create a .env file in the root directory (if required for API keys or configurations):**

    ```bash
    REACT_APP_WEATHER_API_KEY=YOUR_API_KEY
    ```
    Replace YOUR_API_KEY with your OpenWeatherMap API key.
3. **Build and run the Docker container:**
    ```bash
    docker build -t weather-app . && docker run -p 8080:80 weather-app
    ```
4. **View the application:**
    Open your web browser and go to http://localhost:8080 to see the weather application.


## Folder Structure
- nginx: Contains Nginx configuration files.\
    - nginx.conf: Nginx configuration for serving the React app.\
- src: Contains the source code for the React application.\
    -  App.js: Main React component fetching and displaying weather data.

## Customization
- Environment Variables: Modify .env file to update API keys or configuration variables.\
- Nginx Configuration: Adjust nginx/nginx.conf if custom server configurations are needed.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- Built using create-react-app
- Docker and Nginx configurations inspired by best practices and community examples.

## Troubleshooting
If encountering issues, ensure Docker is running and ports are correctly mapped (-p 8080:80).
