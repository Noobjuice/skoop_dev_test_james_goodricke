# Skoop Dev Test

This is a simple order management system that allows users to view past orders and upload new orders via a csv file. The System was implemented using HTML PHP and Javascript, and uses CSS and Bootstrap for styling.

## Getting Started

This system will require an Apache webserver and MySQL database to function. No additional downloads are required, as all required libraries are linked to from Content Delivery Networks.

The credentials to access the site can be found below:

Username:user@email.com

Password: password

## Directory Structure

- /styles
  - css
- /scripts
  - js
- /img
  - SKOOP\_Logo\_Grey\_Trans.png
  - SKOOP\_Logo\_White\_Trans.png
- concat-address.php
- db-login.php
- php
- php
- login-check.php
- login-do.php
- php
- rder-details.php
- php
- php
- upload-do.php

## Pages

### Client Login (login.php)

The user must login using this page before they can access the rest of the site. Any attempt to access other pages while not logged in will redirect here. Once a user makes a login attempt, their credentials are passed to login-do.php. This file checks if their credentials exist in the database, and will either redirect them to the orders page or back to the login page.

### Previous Orders (orders.php)

This page allows users to view previous orders. The page uses a pagenation system implemented in PHP. This system will extract 10 rows at a time from the server, rather than extracting the whole database. Each row in the table also contains a button that will take the user to the orderDetails.php page, where they can view the details of that order.

### Order Details (orderDetails.php)

This page displays the address and ordered item of any given order, as well as any previous orders made by this customer. The list of previous orders also contains links to those orders.

## Upload Orders

This page allows users to upload a CSV file containing a list of orders. Each row of the file is sent to the server using AJAX, which passes them to the upload-do.php file. This file validates the input and inserts it into the database.

If the input is valid, the upload-do.php file will return &quot;OK&quot; to the previous page, which will proceed to add the row to the successful uploads table. If the row is invalid, an array of numbers will be returned indicating the problematic cells, which will then be displayed and highlighted red in the unsuccessful uploads table. Finally, if there is a server error, the upload-do.php file will return -1, and the row will be highlighted blue to indicate a server error.

Admittedly page is the least complete on the site, and still needs some work before it would be suitable for deployment. Ideally the rows would be stored in a temporary table before being added to orders table, to ensure that any disruption of connectivity didn&#39;t result in incomplete data being uploaded. The page would also benefit from more in-depth error messages, particularly regarding server errors.