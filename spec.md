# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
      Yes

- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
      Customer has_many Vehicles

- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
      Vehicle belongs to Customer

- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      Customer has_many Appointments through Vehicles

- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
      Appoinments has a scheduled_for and a status attribute

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      phone_number validations

- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
      Scope - appoinments by status on user's home page

- [x] Include signup (how e.g. Devise)
      Yes

- [x] Include login (how e.g. Devise)
      Yes

- [x] Include logout (how e.g. Devise)
      Yes

- [x] Include nested resource show or index (URL e.g. users/2/recipes)
      /customers/1/vehicles/1

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
      /customers/1/vehicles/new

- [x] Include form display of validation errors (form URL e.g. /recipes/new)
      invalid sign in, invalid phone number

Confirm:

- [ ] The application is pretty DRY

- [ ] Limited logic in controllers

- [x] Views use helper methods if appropriate
      app/helpers/application_helper.rb for #logged_in? and #current_user

- [x] Views use partials if appropriate
      new and edit form partials for users, customers, vehicles, and appointments

- [x] Conforms to Nitro Ruby linting rules
      Yes

If you've added any Bonus functionality to your application, please describe it below:
