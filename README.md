# Card Game Spell Inventory - Natalie Tam's Shopify Application

Additional feature: Ability to assign/remove inventory items to a named group/collection. Card game spells can be added to book collections

This application uses ruby on rails and SQLite db. I chose this stack because of it's efficiency, and to align with 
the language that Shopify uses in their backend servers. 

(Note: the project comes with a pre-seeded database with 10+ entries.)

**Name:** Natalie Tam

## Features
* Efficient, clean pagination 
* Client updates cache when adding/deleting card spells without additional DB requests
* No external state management libraries used
* Users can create new collections, new inventory items. 
* Users can delete collections, and inventory items
* Collections keep count of inventory items
* Very fast load speeds

## Running locally
1. `cd shopify-spellmanager`
2. `bundle install` 

You must be running at least ruby 3.0.1 for this application to work as specified in the Gemfile
4. `rails server` 

The application should appear on  http://localhost:3000/ 



**Production Deployment:** https://spellmanager-n6tam.herokuapp.com/spells

