# Node.js Application with Docker

This project serves as a starting point for Node.js applications using Docker, offering an encapsulated, optimized, and scalable environment.

## Project Structure

The project follows a standard Node.js application setup, providing a solid foundation for your apps.

# Getting Started

1. **Initialize your Node.js app in a Docker container:**

    ```bash
    docker run -it -w /usr/src/app -v "$(pwd):/usr/src/app" node:20 npm init -y
    ```

2. **For Linux users, create an alias for npm:**

    ```bash
    alias npm='docker exec -it <id-of-your-image-created> npm'
    ```

3. **Run the containers:**

    ```bash
    docker-compose up
    ```


5. **Copy the .env.example to .env and set your environment variables.**

    ```bash
    cp .env.example .env
    ```

# Why MongoDB?

MongoDB is included as a database for your Node.js application. It provides a scalable and flexible solution for handling data, making it a popular choice for many applications.

Feel free to customize this project according to your specific requirements.

Happy coding!
