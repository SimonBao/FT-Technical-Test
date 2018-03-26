#Financial Times Feedback Page

##Exercise
Build a website hosted in the cloud (e.g. AWS, Google, Heroku) that asks for and stores a
simple rating score for using ft.com.

###Optional Features
For bonus credit consider using one or more of these techniques:
- Templated infrastructure as code.
- Automated testing
- Origami Components/FT look and feel
- The ability to view the ratings/results

##User stories
####MVP 1

```
    As a user
    To let Finanical Times know how much I like the site
    I want to leave a rating for ft.com
```
####MVP 2
```
    As Financial Times
    To know if users are like our website
    I want view ratings for ft.com
```
####MVP 3
```
    As Financial Times
    To know if everything is working as expected
    I want have automated testing
```

```
    As Financial Times
    To know improve deployment rates/sucession
    I want to use templated infrastructure as code
```

####Tech Stack
- Sqlite3
- Ruby
    - Sinatra
- Rspec
    -Capybara
- AWS Elastic Beanstalk

##Technology       
The task was built using Ruby; it's web application library Sinatra, and Sqlite3 as they are all extremely lightweight and are sufficient for the requirements.  The web application is also cloud hosted by Amazon's service Elastic Beanstalk.

##Achieved 
I was able to create an entirely functioning cloud web application which gathered and stored user feedback ratings. The web application consists of some additional features such as FT origami styling and secondary web page to view ratings. 


##Reflection        
There was not much time for me to complete the task. However, I was able to build a functional web application which I believe fulfilled the requirements. Working with AWS proved to be difficult, initially, the amount of services and documentation provided by Amazon is overwhelming.
Things I would've liked to implement:
- More detailed customer effort score
 - Notifications on rating submission
 - Provide admin page to view all ratings
- Ratings to be more user-friendly
- Use of separate database for testing

