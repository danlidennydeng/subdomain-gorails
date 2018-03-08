1. Rails.application.config.middleware.use Apartment::Elevators::Subdomain

is in config/initializers/apartment.rb

2. lvh.me:3000 without climbing over the GCFW.
--------------------------------------------------

How to create a new global model for all subdomains after apartment gem is installed already?

1. rails g scaffold City name
this is pretty normal

2. rails db:migrate
will create all schemas for all domains anyways for cities

3. In apartment.rb, add "config.excluded_models = ["Advertiser", "Product", "City"]"
then "City" will be a excluded model.

4. Now only Public Schemas will be populated no matter in which domain you have created a new record to city model.
