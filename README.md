## React Assessment First Round Alternate Backend

This is the Rails backend for the [React Assessment First Round Alternate](https://github.com/learn-co-curriculum/immersive-assessment-react-alt-first-round). To ensure accurate testing of your front end code, you need to run this API on your local machine.

## Setup

1. Fork and clone down the repo.
2. Run `bundle install`.
3. Make sure you have Postgres running. (You should see the elephant in the menu bar at the top of your screen.)
4. Run `rake db:setup`.
5. Remember that your frontend React app is running on port 3000. You should therefore specify to run your Rails server on a different port. To do this, start up the server with `rails s -p 3001`. Your server will be running on http://localhost:3001.
6. There are a number of endpoints, some for students, some for teachers

##### For teachers
- GET `/api/admin/users`
  - Returns all IDs for all Users currently in the database
- GET `/api/admin/users/create/:num_students`
  - Given an integer, will create a User and associate with it 4 Courses and 100 Students. If the cohort this challenge is being deployed to has 23 students `/admin/users/create/23` to create Courses and Students for every student in the cohort.
- GET `/api/admin/DANGER_CLEAR`
  - Destroys all models (i.e. Users, Courses, and Students) using a dependent-destroy on Users

Assign a user ID to each student. These IDs will be used by the student to access their own set of data.


#### For students
All routes require a user ID. These should have been given by the instructors to the students before the CC. If a student tries to access a course that is not tied to the user ID entered into the URI, it will return an error.

- GET `/api/v1/users/:user_id/courses`
  - Gets all the courses for a particular user
- GET `/api/v1/users/:user_id/students`
  - Gets all the students for a particular user
  
- GET `/api/v1/users/:user_id/courses/:id`
  - Gets a single course by ID. 
- GET `/api/v1/users/:user_id/students/:id`
  - Gets a single student by ID
- POST/PATCH `/api/v1/users/:user_id/students/:id`
  - Edit a single student's information
  
  

