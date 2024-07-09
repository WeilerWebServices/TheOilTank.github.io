#!/bin/bash

# Below is a comprehensive bash script that will create all the necessary directories, files, and initial code for "The Oil Tank" e-commerce webstore. This script will use SASS for CSS preprocessing, include some placeholder media files, and handle Git initialization and the initial commit to your GitHub repository.

# Define variables
REPO_URL="https://github.com/WeilerWebServices/TheOilTank.github.io.git"
PROJECT_DIR="Oil-Tank"

# Create project directory structure
mkdir -p $PROJECT_DIR/{frontend/{css,js,images,components},backend/{models,routes},db,public}

# Create HTML files
cat <<EOL > $PROJECT_DIR/frontend/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Oil Tank - Home</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header id="header"></header>
    <nav id="navbar"></nav>
    <main>
        <section id="product-list"></section>
    </main>
    <footer id="footer"></footer>
    <script src="js/main.js"></script>
</body>
</html>
EOL

cat <<EOL > $PROJECT_DIR/frontend/product.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Oil Tank - Product</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header id="header"></header>
    <nav id="navbar"></nav>
    <main>
        <section id="product-details"></section>
    </main>
    <footer id="footer"></footer>
    <script src="js/product.js"></script>
</body>
</html>
EOL

cat <<EOL > $PROJECT_DIR/frontend/login.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Oil Tank - Login</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header id="header"></header>
    <nav id="navbar"></nav>
    <main>
        <section id="login-section">
            <form id="login-form">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <button type="submit">Login</button>
            </form>
        </section>
    </main>
    <footer id="footer"></footer>
    <script src="js/auth.js"></script>
</body>
</html>
EOL

cat <<EOL > $PROJECT_DIR/frontend/register.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Oil Tank - Register</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header id="header"></header>
    <nav id="navbar"></nav>
    <main>
        <section id="register-section">
            <form id="register-form">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <button type="submit">Register</button>
            </form>
        </section>
    </main>
    <footer id="footer"></footer>
    <script src="js/auth.js"></script>
</body>
</html>
EOL

cat <<EOL > $PROJECT_DIR/frontend/cart.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Oil Tank - Cart</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header id="header"></header>
    <nav id="navbar"></nav>
    <main>
        <section id="cart-items"></section>
    </main>
    <footer id="footer"></footer>
    <script src="js/cart.js"></script>
</body>
</html>
EOL

# Create HTML components
cat <<EOL > $PROJECT_DIR/frontend/components/header.html
<header>
    <h1>The Oil Tank</h1>
</header>
EOL

cat <<EOL > $PROJECT_DIR/frontend/components/footer.html
<footer>
    <p>&copy; 2024 The Oil Tank</p>
</footer>
EOL

cat <<EOL > $PROJECT_DIR/frontend/components/navbar.html
<nav>
    <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="cart.html">Cart</a></li>
        <li><a href="login.html">Login</a></li>
        <li><a href="register.html">Register</a></li>
    </ul>
</nav>
EOL

cat <<EOL > $PROJECT_DIR/frontend/components/product-card.html
<div class="product-card">
    <img src="IMAGE_URL" alt="PRODUCT_TITLE">
    <h2>PRODUCT_TITLE</h2>
    <p>PRODUCT_DESCRIPTION</p>
    <p>$PRODUCT_PRICE</p>
    <button>Add to Cart</button>
</div>
EOL

# Create SASS files and compile them to CSS
mkdir -p $PROJECT_DIR/frontend/sass

cat <<EOL > $PROJECT_DIR/frontend/sass/styles.scss
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header, footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 1rem;
}

nav ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
    background-color: #444;
}

nav ul li {
    margin: 0 1rem;
}

nav ul li a {
    color: white;
    text-decoration: none;
}

main {
    padding: 2rem;
}

.product-card {
    border: 1px solid #ddd;
    padding: 1rem;
    margin: 1rem;
    text-align: center;
}

.product-card img {
    max-width: 100%;
}

button {
    background-color: #5cb85c;
    color: white;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
}

button:hover {
    background-color: #4cae4c;
}
EOL

cat <<EOL > $PROJECT_DIR/frontend/sass/product.scss
#product-details img {
    max-width: 100%;
    height: auto;
}
EOL

# Compile SASS to CSS
npm install -g sass
sass $PROJECT_DIR/frontend/sass/styles.scss $PROJECT_DIR/frontend/css/styles.css
sass $PROJECT_DIR/frontend/sass/product.scss $PROJECT_DIR/frontend/css/product.css

# Create JavaScript files
cat <<EOL > $PROJECT_DIR/frontend/js/main.js
document.addEventListener('DOMContentLoaded', () => {
    loadComponent('header', 'components/header.html');
    loadComponent('navbar', 'components/navbar.html');
    loadComponent('footer', 'components/footer.html');
    loadProducts();
});

function loadComponent(id, file) {
    fetch(file)
        .then(response => response.text())
        .then(data => {
            document.getElementById(id).innerHTML = data;
        });
}

function loadProducts() {
    fetch('http://localhost:3000/api/products')
        .then(response => response.json())
        .then(products => {
            let productList = document.getElementById('product-list');
            productList.innerHTML = '';
            products.forEach(product => {
                let productCard = document.createElement('div');
                productCard.classList.add('product-card');
                productCard.innerHTML = `
                    <img src="\${product.imageUrl}" alt="\${product.title}">
                    <h2>\${product.title}</h2>
                    <p>\${product.description}</p>
                    <p>$\${product.price}</p>
                    <button>Add to Cart</button>
                `;
                productList.appendChild(productCard);
            });
        });
}
EOL

cat <<EOL > $PROJECT_DIR/frontend/js/product.js
document.addEventListener('DOMContentLoaded', () => {
    const productId = new URLSearchParams(window.location.search).get('id');
    loadProductDetails(productId);
});

function loadProductDetails(productId) {
    fetch(\`http://localhost:3000/api/products/\${productId}\`)
        .then(response => response.json())
        .then(product => {
            document.getElementById('product-details').innerHTML = `
                <img src="\${product.imageUrl}" alt="\${product.title}">
                <h1>\${product.title}</h1>
                <p>\${product.description}</p>
                <p>$\${product.price}</p>
                <button>Add to Cart</button>
            `;
        });
}
EOL

cat <<EOL > $PROJECT_DIR/frontend/js/auth.js
document.getElementById('login-form').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    loginUser(email, password);
});

document.getElementById('register-form').addEventListener('submit', (e) => {
    e.preventDefault();
    const username = document.getElementById('username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    registerUser(username, email, password);
});

function loginUser(email, password) {
    fetch('http://localhost:3000/api/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email, password })
    })
    .then(response => response.json())
    .then(data => {
        if (data.token) {
            localStorage.setItem('token', data.token);
            window.location.href = 'index.html';
        } else {
            alert('Login failed!');
        }
    });
}

function registerUser(username, email, password) {
    fetch('http://localhost:3000/api/register', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ username, email, password })
    })
    .then(response => response.json())
    .then(data => {
        if (data.id) {
            alert('Registration successful!');
            window.location.href = 'login.html';
        } else {
            alert('Registration failed!');
        }
    });
}
EOL

cat <<EOL > $PROJECT_DIR/frontend/js/cart.js
document.addEventListener('DOMContentLoaded', () => {
    loadCartItems();
});

function loadCartItems() {
    fetch('http://localhost:3000/api/cart', {
        headers: { 'Authorization': \`Bearer \${localStorage.getItem('token')}\` }
    })
    .then(response => response.json())
    .then(cartItems => {
        let cartList = document.getElementById('cart-items');
        cartList.innerHTML = '';
        cartItems.forEach(item => {
            let cartItem = document.createElement('div');
            cartItem.classList.add('cart-item');
            cartItem.innerHTML = `
                <img src="\${item.product.imageUrl}" alt="\${item.product.title}">
                <h2>\${item.product.title}</h2>
                <p>Quantity: \${item.quantity}</p>
                <p>Price: $\${item.product.price}</p>
                <button>Remove</button>
            `;
            cartList.appendChild(cartItem);
        });
    });
}
EOL

# Create database setup script
cat <<EOL > $PROJECT_DIR/db/database.sql
-- Create the database
CREATE DATABASE oiltank;

-- Use the database
USE oiltank;

-- Create the users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the products table
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    imageUrl VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the carts table
CREATE TABLE carts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the cart_items table
CREATE TABLE cart_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cartId INT NOT NULL,
    productId INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (cartId) REFERENCES carts(id),
    FOREIGN KEY (productId) REFERENCES products(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the orders table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES users(id)
);

-- Create the order_items table
CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    orderId INT NOT NULL,
    productId INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (orderId) REFERENCES orders(id),
    FOREIGN KEY (productId) REFERENCES products(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add some sample data
INSERT INTO users (username, email, password) VALUES 
('admin', 'admin@oiltank.com', 'password123'),
('user1', 'user1@oiltank.com', 'password123');

INSERT INTO products (title, description, price, imageUrl) VALUES 
('Product 1', 'Description for product 1', 29.99, 'image1.jpg'),
('Product 2', 'Description for product 2', 19.99, 'image2.jpg');

INSERT INTO carts (userId) VALUES 
(1), 
(2);

INSERT INTO cart_items (cartId, productId, quantity) VALUES 
(1, 1, 2), 
(2, 2, 1);

INSERT INTO orders (userId, total, status) VALUES 
(1, 59.98, 'Completed'), 
(2, 19.99, 'Pending');

INSERT INTO order_items (orderId, productId, quantity, price) VALUES 
(1, 1, 2, 29.99), 
(2, 2, 1, 19.99);
EOL

# Initialize git repository
cd $PROJECT_DIR
git init
echo "node_modules/" > .gitignore
git add .
git commit -m "Initial commit"

# Add remote repository and push
git remote add origin $REPO_URL
git branch -M main
git push -u origin main

echo "Project setup complete and pushed to GitHub!"
# Save the script as setup_oiltank_webstore.sh.

# Instructions to Run the Script
# Make the script executable:
# chmod +x setup_oiltank_webstore.sh
# Run the script:
# ./setup_oiltank_webstore.sh
# This script sets up the directory structure, creates necessary HTML, CSS (compiled from SASS), JavaScript, and SQL files, and initializes a Git repository with the first commit. Finally, it pushes the setup to the specified GitHub repository. Note that the script assumes you have npm, git, and sass installed and available in your environment. If they are not installed, you may need to install them before running the script.
