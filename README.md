## React Assessment First Round Repeat Backend

This is the Rails backend for the React Assessment First Round Repeat. To ensure accurate testing of your front end code, you need to run this API on your local machine.

## Setup

1. Fork and clone down the repo.
2. Run `bundle install`.
3. Make sure you have Postgres running. (You should see the elephant in the menu bar at the top of your screen.)
4. Run `rake db:setup`.
5. Remember that your frontend React app is running on port 3000. You should therefore specify to run your Rails server on a different port. To do this, start up the server with `rails s -p 3001`. Your server will be running on http://localhost:3001.
6. The endpoints you need to hit are:  
- Get: http://localhost:3001/courses/:id
- Post: http://localhost:3001/students/:id.
