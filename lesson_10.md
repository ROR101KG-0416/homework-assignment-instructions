## Lesson 10 Homework Assignment

### Fork this [Repo](https://github.com/ROR101KG-0416/lesson-10-homework)

**PLEASE NOTE:** This assignment requires that you **re-create the application from scratch** and include the features requested from both Milestones #1, #2 & #3. These *Developer repetitions* are meant increase your familiarity with rails and its conventions.

### Goal

- Use your knowledge of the rails request/response lifecycle, migrations and ActiveRecord to build out the first phase of a Restaurant Review site

### Background

A client with dreams of building the next [Yelp](http://yelp.com/) has hired you to build out their platform. The client has broken out the project into a series of milestones. Each homework assignment will involve completing a specific milestone.

#### Milestone #1

A User should be able to view a list of Restaurants and view a details of a specific restaurant

Requirements:
- The application should contain one model that represents restaurants called Restaurant
- Restaurants should have the following fields: name (string), street (string), city (string), state (string), country (string), postal_code (string)
- A user should be able to view a list of all restaurants in your database by either navigating to:
  -  the root path of your app or:
  - `/restaurants`
- The index view should only list restaurant names (the address should not be displayed in the index view)
- The name of each restaurant in the index view should be a link that navigates to the detail page (show view) of the restaurant that was selected
- The show view of each resturant should display both the name and the full address of the restaurant that was selected
- Your app must contain test (at least restaurants), you can accomplish this by either:
 - Create your restaurants using the rails console (we cover how to create restaurants using the web interface in the next class)
 **or**
 -  Using Rails built in seed data functionality - Read [Migrations and Seed Data in the Rails Guide](http://edgeguides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data) for more information.
- **Do not worry about aesthetics** - we will cover styling your rails app in a later lesson

#### Milestone #2

A User should be able to create, update and delete Restaurants

Requirements:

**Use the "Happy Path" approach for this milestone**

- The name of each restaurant in the index view should be a link that navigates to a page (show view) that displays details page of the restaurant that as selected
- Add a link titled "Create New Restaurant" to the index (list) view created during Milestone #1
- When the user clicks on this link they should be sent to a view that displays a form that facilitates the creation of a new restaurant
- The form should possess the following form inputs:
 - text field input for the "name" attribute
 - text field input for the "street" attribute
 - text field input for the "city" attribute
 - text field input for the "state" attribute (for now don't worry about a dropdown, we'll fix this later)
 - text field input for the "country" attribute (for now don't worry about a dropdown, we'll fix this later)
 - text field input for the "postal_code" attribute
 - button (used to submit the form)
- When the user submits the form the following should happen:
  - A new restaurant should be created
  - The user should be redirected to the index (list) view and the recently added restaurant should be displayed in the view
- Display an edit and delete link next to each restaurant title in the index view
  - When the user clicks on the "edit" link they should be sent to the edit view that displays a form that facilitates the updating of an existing restaurant
    - When the user submits the edit form, they should be redirected to the show view of the recently updated Restaurant
 - When the user clicks on the "delete" link they should be presented with a confirmation alert and if they confirm the the delete, the restaurant should be deleted and the user should be redirected to the index page

#### Milestone #3

Add associations, validations, error handling, notifications & partials

- Add Associations
  - Your client wants to be able to associate a restaurant location with a neighborhood (e.g. Flatiron, Brooklyn Heights, etc). **Add a Neighborhood resource (fields: name [string]) to your Restaurant app** and establish a **has_many** relationship between restaurants and neighborhoods (don't worry about the fact that some restaurants may have multiple locations in different neighborhoods)
  - Your client wants to be able to categorize restaurants (i.e. "Mexican", "Italian" "Club", "Sports Bar", etc). **Add a Category resource (fields: name [string]) to your Restauant app** and establish a **many-to-many** relationship between restaurants and categories
  - Allow users to create, read, update or delete (ALL CRUD actions) Neighborhoods from the user interface (via controllers & views **and NOT the rails console**)*
  - Allow users to create, read, update or delete (All CRUD actions) Categories from the user interface (via controllers & views and **NOT the rails console**)*
  - Update your Restaurants form view to include the following:
    - Add a dropdown select input that allows the user to associate a restaurant with one neighborhood
    - Add checkboxes that allows a user to associate a restaurant with one or more categories


- Add Validations
  - Implement the following validation rules:
    - Restaurants must have a name present and that name must be unique
    - Restaurants must have a postal_code present
    - Categories must have a name present and that name must be unique


- Add Error Handling and Notifications
  - When a user attempts to create or update (from a view NOT the console) a restaurant, neighborhood or category the following should happen:
    - If an error occurs (due to a validation error) then display an error to the user informing them of the error
      - A list of the specific errors that occurred on the form
      - If the result of the action was a success, display a success notification to users
  - If an error occurs when creating a new resource, the user should **NOT** have to refill data that was already entered


- Add Partials
  - Use a partial to reduce the duplication between the new and edit views for all of your resources (restaurants, neighborhoods and categories

*This involves implementing all 7 built-in Rails controller actions that enables users to conduct all CRUD actions using the web interface
