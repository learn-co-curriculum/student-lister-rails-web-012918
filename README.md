## Topics
- Authentication
- Authorization


## User Stories

1. As a registered user, I should be able to log in by providing my username (no passwords for today)
- Does my schema need to change
- Do i need any additional routes /login

Look in our database, see if a user with that username exists,
if found, set that users id into the session cookie
# session[:user_id] = @user.id
else
show the user the login form again

2. As an un-authenticated user, I should be able to see a list of students and information about an individual student. As an authenticated user I should be able to do all of the above plus create a new user.

## Goals

How can I make the current user available in all of my controllers and in my views
