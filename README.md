1. Rails.application.config.middleware.use Apartment::Elevators::Subdomain

is in config/initializers/apartment.rb

2. lvh.me:3000 without climbing over the GCFW.

3. subdomain's name must be all lower case.
--------------------------------------------------

How to create a new global model for all subdomains after apartment gem is installed already?

1. rails g scaffold City name
this is pretty normal

2. rails db:migrate
will create all schemas for all domains anyways for cities

3. In apartment.rb, add "config.excluded_models = ["Advertiser", "Product", "City"]"
then "City" will be a excluded model.

4. Now only Public Schemas will be populated no matter in which domain you have created a new record to city model.

5. any models created before rails g apartment:install, will still be in the schemas database table if it is excluded although it won't be populated. In another word, if it is not excluded, then it will be apartmented up regardless the model was created before apartment gem.
--------------------------------------------------

More Advertisers you have, more schemas you will have. Is this still manageable if you have more than 1,000 advertisers?

--------------------------------------------------------------

change to github
