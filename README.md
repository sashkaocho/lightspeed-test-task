# Lightspeed Test Task

This repository contains a full-stack project for the Lightspeed Test Task with separate frontend and backend modules. It uses Docker, Docker Compose, and Node.js technologies to build, run, and test the application. The frontend is built using **Vue 3**, **Vite**, and **TypeScript**, while the backend is developed using **Express.js**.

## Project Structure

- **Frontend**: [Lightspeed Test Task Frontend](https://github.com/sashkaocho/lightspeed-test-task-front) - Vue 3 + Vite + TypeScript
- **Backend**: [Lightspeed Test Task Backend](https://github.com/sashkaocho/lightspeed-test-task-back) - Express.js

## Requirements

- **Docker** (for containerization)
- **Docker Compose** (to manage multi-container applications)
- **Git** (for version control)
- **Node.js** (for backend and frontend development)

- **Port 3000** for backend
- **Port 5173** for frontend

## Setup and Installation

Follow the steps below to set up and run the project on your local machine:

### 1. Clone the Repository

Clone the main repository and its submodules (frontend and backend):

```bash
git clone https://github.com/sashkaocho/lightspeed-test-task.git

cd lightspeed-test-task

git submodule update --init --recursive
```

### 2. Build and Start the Containers

Clone the main repository and its submodules (frontend and backend):

```bash
docker-compose up --build
