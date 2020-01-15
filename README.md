# Rails Project

As an homage to the classic DHH (the creator of Rails) 15 minute blog demo (Links to an external site.), for our term project we will be creating our own customized blogs from scratch. To start, we will be creating the basic data structure and will be gradually expanding functionality throughout the next courses. 

Each blog will display a list of posts on it’s home page. Users will be able to click on a post from that list and view a single blog post. Each post will be authored by a user and will have a commenting system available.

Blog posts are organized in two ways:

Categories: Each post will belong to one category. Each category can have multiple blog posts associated with it. For example: an Engineering category will contain all blog posts associated with that topic. 

Tags: Posts can have many tags and tags can belong to many different posts. Tags are used primarily for searching purposes. For example: A blog post written about best engineering practices at Shopify can be filed in the Engineering category and may have the following tags associated with it: “Ruby”, “Ruby on Rails”, “Back end”, “Engineering at Shopify”. For this project, you will be building the models for your app. You will start with an ER Diagram and work your way to functioning Ruby on Rails code:

DATA Rails project ER diagram.jpg

Requirements:

Your models must include:

Five or more realistic validations (refer back to the Rails Guide on validations for inspiration).
Appropriate associations for each relation in the ER diagram.
A migration for each model that can be rolled back if necessary.
The app should insert realistic data into your database using a seeds file and you should be able to insert more data through the rails console.

 

Your app also must include:

A scaffolded Posts controller that:
Lists all posts with a link to each single post in an index action
Displays a single post in a show action
The single post view must show the post’s author, category, and any tags and comments associated with it.
Create a custom action called stats in your Posts controller that uses Active Record to query the database to display the following stats:

The user with the most number of authored posts and the associated count
The top 5 most used tags 
The title of the longest blog post by character count
Hint: practice these queries in your rails console to learn what data is returned and how to access it. 

It is important that you focus your time on building your data models for this project and avoid spending too much time on views/user interface. Your app’s views should only be used to display data so there is no need to edit any of the generated form views. See the following example views as a guide for your project:

posts#index view:

blog-posts-index.png





posts#show view:

blog-show.png



posts#stats view:

blog-stats.png
