## Lesson 06 Homework Assignment

### Fork this [Repo](https://github.com/ROR101KG-0416/lesson-06-homework)

### Goal

- Use your knowledge of the rails request/response lifecycle, migrations and ActiveRecord to build out the first phase of a Restaurant Review site

### Background

A client with dreams of building the next [Yelp](http://yelp.com/) has hired you to build out their platform. The client has broken out the project into a series of milestones. Each homework assignment will involve completing a specific milestone.

#### Milestone #1

A User should be able to view a list of Restaurants

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
