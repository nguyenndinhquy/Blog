+++
title = "How to Build a Simple REST API with Node.js and Express"
date = '2025-09-15'
draft = false
tags = ["nodejs", "javascript", "api", "tutorial"]
+++

## Introduction

A REST API is a fundamental component of modern web development, allowing clients (like a frontend application) to communicate with a server. Node.js, combined with the Express framework, is one of the most popular and efficient ways to build APIs.

In this tutorial, we'll walk through creating a simple REST API with a few endpoints to manage a list of users.

## Prerequisites

- **Node.js and npm:** Make sure you have Node.js installed. You can download it from [nodejs.org](https://nodejs.org/). npm (Node Package Manager) is included with the installation.
- **A code editor:** Such as Visual Studio Code.
- **A tool for testing APIs:** Like Postman, Insomnia, or even the `curl` command-line tool.

## Step 1: Initialize Your Project

First, create a new directory for your project and initialize it with npm. This will create a `package.json` file to manage your project's dependencies.

```bash
mkdir my-api
cd my-api
npm init -y
```

The `-y` flag accepts all the default prompts from `npm init`.

## Step 2: Install Express

Express is a minimal and flexible Node.js web application framework that provides a robust set of features for web and mobile applications. Install it using npm:

```bash
npm install express
```

## Step 3: Create the Server

Create a new file named `index.js`. This will be the entry point for our application.

Add the following code to set up a basic Express server:

```javascript
const express = require('express');
const app = express();
const port = 3000;

// Middleware to parse JSON bodies
app.use(express.json());

// In-memory "database" for demonstration
let users = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' }
];

// Define a simple route for the root URL
app.get('/', (req, res) => {
  res.send('Welcome to our simple REST API!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
```

Run your server with the command: `node index.js`. If you open your browser to `http://localhost:3000`, you should see the welcome message.

## Step 4: Create API Endpoints

Now let's add endpoints to perform CRUD (Create, Read, Update, Delete) operations on our `users` data.

### GET /users - Read all users

```javascript
app.get('/users', (req, res) => {
  res.json(users);
});
```

### GET /users/:id - Read a single user

```javascript
app.get('/users/:id', (req, res) => {
  const id = parseInt(req.params.id);
  const user = users.find(u => u.id === id);

  if (user) {
    res.json(user);
  } else {
    res.status(404).send('User not found');
  }
});
```

### POST /users - Create a new user

```javascript
app.post('/users', (req, res) => {
  const newUser = {
    id: users.length + 1, // Simple ID generation
    name: req.body.name
  };
  users.push(newUser);
  res.status(201).json(newUser);
});
```

## Step 5: Test Your API

Restart your server (`node index.js`) and use a tool like Postman to test your endpoints:

- **`GET http://localhost:3000/users`**
  - Should return the list of all users.

- **`GET http://localhost:3000/users/1`**
  - Should return the user with ID 1 (Alice).

- **`POST http://localhost:3000/users`**
  - Set the body to `JSON` and provide `{"name": "Charlie"}`.
  - This should return the new user with ID 3 and add them to the list.

## Conclusion

Congratulations! You've built a basic but functional REST API with Node.js and Express. This is the foundation for building a robust backend for any application. From here, you could expand it by:

- Connecting to a real database like MongoDB or PostgreSQL.
- Adding error handling and validation.
- Implementing authentication and authorization.
