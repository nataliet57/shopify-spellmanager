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

## Demonstration
![image](https://user-images.githubusercontent.com/30819550/148667744-8861e7ce-0832-4702-aa8b-91adb40e20ea.png)
On the card spell page, users can create new spells, edit it, or add it to a collection. To create a new card spell, you must specify details such as the title, the type of card, the classes, and the level. Creating this new card will create a new inventory item that can be added to a book collection of spell cards. You can also edit the spell by changing any of the fields, or deleting it. Deleting it will remove the spell card from the book collection.

![image](https://user-images.githubusercontent.com/30819550/148667825-45cbd811-43ff-494b-bd49-c5daf650e5a2.png)

![image](https://user-images.githubusercontent.com/30819550/148667744-8861e7ce-0832-4702-aa8b-91adb40e20ea.png)
Users can also explore the different book collections created. Each book collection contains spells and by clicking on the book title, you can view the spell cards in the book. This is a fully functional CRUD application, so you can create new books, remove, update, and view a list of the books.

![image](https://user-images.githubusercontent.com/30819550/148667850-5157d573-2571-4e47-b6fd-40dc8aff2371.png)

![image](https://user-images.githubusercontent.com/30819550/148667744-8861e7ce-0832-4702-aa8b-91adb40e20ea.png)


## Running locally
1. `cd shopify-spellmanager`
2. `bundle install` 

You must be running at least ruby 3.0.1 for this application to work as specified in the Gemfile
4. `rails server` 

The application should appear on  http://localhost:3000/ 



**Production Deployment:** https://spellmanager-n6tam.herokuapp.com/spells

