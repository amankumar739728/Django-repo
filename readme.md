# Django follows the MVT design pattern (Model View Template).

1. Model - The data you want to present, usually data from a database.
2. View - A request handler that returns the relevant template and content - based on the request from the user.
3. Template - A text file (like an HTML file) containing the layout of the web page, with logic on how to display the data.

#### Model (models.py)

--->In Django, the data is delivered as an Object Relational Mapping (ORM), which is a technique designed to make it easier to work with databases.

--->Django, with ORM, makes it easier to communicate with the database, without having to write complex SQL statements.



# Working Steps for web App Created Using Django

1. Django receives the URL, checks the urls.py file, and calls the view that matches the URL.
2. The view, located in views.py, checks for relevant models.
3. The models are imported from the models.py file.
4. The view then sends the data to a specified template in the template folder.
5. The template contains HTML and Django tags, and with the data it returns finished HTML content back to the browser.


# Commands:

C:\DJANGO>pip install django                              #install django

C:\DJANGO>python -m django --version                      #check django version                     

C:\DJANGO>django-admin startproject firstproject          #create a new project

C:\DJANGO>cd firstproject                                 #go to file directory and run the server using below command

C:\DJANGO\firstproject>python manage.py runserver         #run server

C:\DJANGO\firstproject>python manage.py migrate

C:\DJANGO\firstproject>python manage.py runserver 127.0.0.1:8000

# Superuser: write username:admin, email:admin@gmail.com, and password:%%Admin@123%%
C:\DJANGO\firstproject>python manage.py createsuperuser 




# Project vs App

## Run command(open git bash and type below command for project setup by moving to project directory):

1.pip install django
2.django-admin --version
3.django-admin startproject projectname
4.cd projectname
5.python manage.py runserver
6.python manage.py runserver 127.0.0.1:8000
<!-- This will start a development server on your local machine. You can access your project at http://127.0.0.1:8000/ in your web browser. -->

# project structure

myproject/
├── manage.py       #It's used for tasks like starting the development server, running database migrations, and more.
└── myproject/      #inner directory of project with same name as project
    ├── __init__.py  #An empty file that tells Python that this directory should be considered a Python package
    ├── asgi.py      #A file for ASGI which is used for running Django applications with asynchronous support.
    ├── settings.py  # This file contains the configuration settings for your Django project.
    ├── urls.py      # This file contains the URL patterns for your project. It maps URLs to views.
    ├── views.py     # Additional file we created for URL mapping(urls.py) with views.py
    └── wsgi.py      #file responsible for integration between web and server.

# for template rendering 
1. go to this location --> C:\DJANGO\secondproject
2. create a filename called templates and put all your html file there (index.html,home.html)
3. go to settings.py file and type below command in place of: TEMPLATES-----> 'DIRS': [],
                         --->'DIRS': [BASE_DIR,'templates'],
4. write the function in views.py and handle it inside urls.py



# App:

<!-- Apps are smaller components within a Django project that serve specific purposes. For example, you might have an app for handling user authentication, another for managing a blog, and so on. -->


# App structure in project 


myapp/
├── admin.py    #This is where you can register models to be managed via the Django admin interface.
├── apps.py     #This file defines configuration for the app. It's where you can customize how the app behaves.
├── __init__.py
├── migrations/ #This directory contains database migration files, which used to apply changes to the database schema.
│   └── __init__.py
├── models.py   #This is where you define data models for your app.
├── tests.py    #This is where you can write unit tests for your app.
└── views.py    # This is where you define view functions that handle HTTP requests and return responses.

# To create a new app, follow these steps:
        1. cd myproject
        2. python manage.py startapp myapp          #create a new app using this command



# How Projects and Apps Work Together:
---> A project can contain multiple apps, each serving a specific functionality.
--->Apps are designed to be modular and can be reused in different projects. For example, you can have a "user authentication" app that you use in multiple projects.

--->Projects serve as the container for your entire web application. They manage settings, URL routing, and the overall configuration of the application.

--->Projects use apps to organize and separate different features or functionalities. This makes it easier to maintain and extend your application as it grows in complexity.

--->In summary, projects provide the overall structure and configuration for your web application, while apps handle specific functionalities within the project. This separation of concerns helps to keep your code organized and maintainable.















