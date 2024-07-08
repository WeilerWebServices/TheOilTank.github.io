# The Oil Tank E-Commerce Webstore

This is the e-commerce webstore project named "The Oil Tank". It is designed to be mobile-friendly and touch-capable, supporting various payment options.

## Project Structure

```
Oil-Tank/
├── frontend/
│   ├── css/
│   │   ├── styles.css
│   │   └── product.css
│   ├── js/
│   │   ├── main.js
│   │   ├── product.js
│   │   ├── auth.js
│   │   └── cart.js
│   ├── components/
│   │   ├── header.html
│   │   ├── footer.html
│   │   ├── navbar.html
│   │   └── product-card.html
│   ├── index.html
│   ├── product.html
│   ├── login.html
│   ├── register.html
│   └── cart.html
├── backend/
│   ├── models/
│   ├── routes/
│   └── controllers/
├── database/
│   └── database.sql
└── README.md
```

## Setup Instructions

1. Initialize a Git repository:

```
git init
```

2. Create the project directory structure and files:

```
./setup_project.sh
```

3. Set up the database:

```
mysql -u root -p < database/database.sql
```

4. Implement the backend server and API endpoints as described in the project checklist.

## Development

- HTML, CSS, and JavaScript are used for the frontend.
- Node.js and Express.js are recommended for the backend.
- The database is set up using MySQL.

```

This script sets up the directory structure, creates necessary files, and includes basic code snippets for each file. You will need to implement the backend server, API endpoints, and add further functionality as required.
