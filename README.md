# README

# Project: Memebers Only!

  A simple app that displays a sign in system, witch user can, sign up, sign in ,sign out, create new post and only members could see the author article name.

## prerequisite
1. Git.
2. Code editor.
3. Code linter.
4. Rails.
5. Browser. 

## How to run the program
1. Open the terminal.

2. Enter `git clone https://github.com/othman-19/members-only`.

3. Navigate to the cloned repository.

4. In the terminal cd into members-only.

5. Install bundle by typing `bundle install` and update it by typing `bundle update` in the terminal.

6. Run the rails server by typing `rails server` in the terminal.

7. Create a new user by typing `new_user = User.create(name:'foo',email:"example@foo.bar, email_confirmation:"example@foo.bar,password:"password")` on rails server.

8. Open a browser page and type this url `http://localhost:3000/login`.

9. If you get an error message on the browser like this: "Migrations are pending. To resolve this issue, run: bin/rails db:migrate RAILS_ENV=development", just got to the terminal and run: `bin/rails db:migrate RAILS_ENV=development` then refresh your page.

10. Enter a valid information and submit to log in.

11. Open a new browser tab (or page) and type this url `http://localhost:3000/posts/new`, submit a new article -with title and body-.

12. Go to this url `http://localhost:3000/posts`, if you are signed in you can see post's author name, if you are not signed in you could not see post's author name.

## Contributor(s)
1. [Othamane Naamani](https://github.com/othman-19/).
2. [Molnar Emese](https://github.com/Mesi21).