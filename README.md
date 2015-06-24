# Ruby On Rails bookshelf

1. Basic app configuration. Models, seed files, rails console
2. Layout, SCSS, routes
3. Display books
4. Show book
5. Devise
6. Sign up, sign in pages
7. Add/edit/delete book
8. Add/delete review
9. Shopping cart
10. Orders
11. Profile

---

## Basic app configuration. Models, seed files, rails console

First of all lets check you have a ruby installed on your computer. Open a terminal and type `ruby -v`. You might get something like that:

```
ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-darwin14]
```
If you have ruby 2.0 or older, please update it to newest version.

Lets check whether you have `rails gem`  on your system. Type in terminal window `rails -v`. 
Here what I have: 

```
Rails 4.2.1
```

If you do not have `rails`, install it with a command `gem install rails`. 

By the way, `gem list --local` returns a list of all installed gems.

Go to your home directory or any other folder and create a new rails project.
```
cd ~/
rails new bookshelf-rails
```

![image](./bookshelf-project.png)

Than create a project folder `bookshelf-rails` and enter it with `cd bookshelf-rails`.




