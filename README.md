# Jungle

Jungles is a mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product
!["Screenshot of Creating Appointment"](https://github.com/RicardoJBOF/scheduler/blob/master/docs/creating-appointment.png)
!["Screenshot of register Saving Appointment"](https://github.com/RicardoJBOF/scheduler/blob/master/docs/saving-appointment.png)
!["Screenshot of View"](https://github.com/RicardoJBOF/scheduler/blob/master/docs/View.png)



## Functional Requirements

### Feature: Sold Out Badge
When a product has 0 quantity, a sold out badge should be displayed on the product list page

### Admin Categories
Admin users can list and create new categories
Admins can add new products using the new category
Restful routes (resources) should be used, and there should be no extra, unused routes exposed

### Feature: User Authentication
As a Visitor I can go to the registration page from any page in order to create an account
As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
As a Visitor I can sign in using my e-mail and password
As a User I can log out from any page
As a User I cannot sign up with an existing e-mail address (uniqueness validation)
Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

### Enhancement: Order Details Page
The order page contains items, their image, name, description, quantities and line item totals
The final amount for the order is displayed

### Bug: Missing Admin Security
User must enter HTTP auth login/password to access admin functionality
Should ideally be implemented in an abstract top-level class for admin controllers (e.g., Admin::BaseController which the other concrete admin controllers inherit)

### Bug: Checking Out with Empty Cart
When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page





## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## Getting Started

### Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

### Stripe Testing




