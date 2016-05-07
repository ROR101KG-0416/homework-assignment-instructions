## Lesson 08 Homework Assignment

### Fork this [Repo](https://github.com/ROR101KG-0416/lesson-08-homework)

**PLEASE NOTE:** This assignment requires that you re-create the application from scratch and include the features requested from both Milestones #1 & #2. These *Developer repetitions* are meant increase your familiarity with rails and its conventions.

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
