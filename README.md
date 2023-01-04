# Jungle

A mini e-commerce application that sells plants, built with Rails 6.1.

## Features

1. `Admin Dashboard`: Admin users can view a summary of their products and a categories count. Admin users can also add new products to the inventory, and create new categories.
2. `Admin Security`: Implement HTTP Basic Authentication for all the pages accessible to an Admin user
3. `Sold Out Badge`: When a product has 0 quantity, a red sold out badge is displayed on the product list page
4. `Sold Out Items`: 'Add to card' method is disabled for items that are sold out
5. `Stripe API`: Uses the Stripe API to process payment information and complete a users order
6. `User Authentication`: Visitors can register, login and logout. When a user is logged-in, the nav bar displays a message of: "Hello, #username!"

## Setup

1. `git clone` the project
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rails db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Testing

- `Rspec` was used to test the Product and User models
- `Cypress` was used to test the Home Page, Product Details and Add to Cart feature

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- bcrypt
- Cypress
- Rspec

## Screenshots

### Logged-Out User

!["Main page"](https://github.com/vorotyna/jungle-rails/blob/master/docs/homepage.png?raw=true)

!["About"](https://github.com/vorotyna/jungle-rails/blob/master/docs/about%20page.png?raw=true)

### Logged-In User

!["Main page"](https://github.com/vorotyna/jungle-rails/blob/master/docs/logged-in-home.png?raw=true)

!["Product catalogue"](https://github.com/vorotyna/jungle-rails/blob/master/docs/homepage.png?raw=true)

!["My Cart"](https://github.com/vorotyna/jungle-rails/blob/master/docs/my-cart.png?raw=true)

!["Payment"](https://github.com/vorotyna/jungle-rails/blob/master/docs/pay.png?raw=true)

!["Finish payment"](https://github.com/vorotyna/jungle-rails/blob/master/docs/finish-payment.png?raw=true)

### Admin Pages

!["Admin Dash"](https://github.com/vorotyna/jungle-rails/blob/master/docs/admin-dash.png?raw=true)

!["Admin Categories"](https://github.com/vorotyna/jungle-rails/blob/master/docs/admin-cat.png?raw=true)

!["Admin Products"](https://github.com/vorotyna/jungle-rails/blob/master/docs/admin-dash.png?raw=truehttps://github.com/vorotyna/jungle-rails/blob/master/docs/admin-prod.png?raw=true)

!["Admin Add New Products"](https://github.com/vorotyna/jungle-rails/blob/master/docs/admin-add-prod.png?raw=true)
