# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

### Home Page

Home page, displaying every product that Jungle has to offer.

!["home page"](https://github.com/mpham-12/jungle-rails/blob/master/docs/homepage.png)

### Selecting a Product

Upon clicking the product, it will render a new page that displays the product.

!["product details"](https://github.com/mpham-12/jungle-rails/blob/master/docs/product_display.png)

### My Cart

Cart page, showing all the products you have added, along with the prices.

!["cart"](https://github.com/mpham-12/jungle-rails/blob/master/docs/cart.png)

### Entering your Payment Details

Using stripe, users are able to pay for their order by entering their card details.

!["pay via stripe"](https://github.com/mpham-12/jungle-rails/blob/master/docs/payment.png)

### Order Confrimation

Once the order is submitted, your order details will appear as a means of confirmation

!["order details"](https://github.com/mpham-12/jungle-rails/blob/master/docs/order_details.png)

### Adding a New Product

The admin, who must provide the valid log in details, is able to create and delete products.

!["admin products page"](https://github.com/mpham-12/jungle-rails/blob/master/docs/admin_products.png)

### New Product Form

This is the New Product Form that is used to create a new product.

!["new product form"](https://github.com/mpham-12/jungle-rails/blob/master/docs/new_product.png)



## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
