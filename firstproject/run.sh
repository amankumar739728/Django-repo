# open git bash and type below command

1. django-admin startproject firstproject        #create project
2. cd firstproject                               #go to project directory
3. python manage.py startapp myapp               # create a new app inside project
# Run the following commands to create and apply database migrations:
# after creating the model in model.py file type these 2 commands to create a table named Userprofile.
4.python manage.py makemigrations    "or"  python manage.py makemigrations myapp        
  python manage.py migrate

5. python manage.py runserver             #run the server


# C:\DJANGO\firstproject>py manage.py sqlmigrate myapp  0001  
--->Here we have myapp and using above command we can see the table got created inside it.

6. Django Insert Data

# open the python cell and insert the data or at the /admin handle after login you will get myapp data u can enter there too.
C:\DJANGO\firstproject>py manage.py shell
Python 3.10.5 (tags/v3.10.5:f377153, Jun  6 2022, 16:14:13) [MSC v.1929 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from myapp.models import UserProfile  
>>> UserProfile.objects.all()     
<QuerySet [<UserProfile: Aman Kumar>]>
>>> user = UserProfile(first_name='Ankit', last_name='Kumar',email='ankit.kumar@gmail.com')
>>> user.save()   
>>> UserProfile.objects.all().values()
<QuerySet [{'id': 1, 'first_name': 'Aman', 'last_name': 'Kumar', 'email': 'aman.kumar739728@gmail.com'}, {'id': 2, 'first_name': 'Ankit', 'last_name': 'Kumar', 'email': 'ankit.kumar@gmail.com'}]>

>>> user1 = UserProfile(first_name='Tobias', last_name='Refsnes',email='tobias.refsnes@gmail.com')
>>> user2 = UserProfile(first_name='Linus', last_name='Refsnes',email='linus.refsnes@gmail.com')
>>> user1.save();user2.save()
>>> UserProfile.objects.filter(last_name__startswith="R")


7. Django Update Data
>>> from myapp.models import UserProfile
>>> x = UserProfile.objects.all()[3]     #fetch the data at index 3
>>> x.first_name
>>> x.first_name = "Stalikken"
>>> x.save()
>>> UserProfile.objects.all().values()       #all available data will be displayed after updating

>>> print("Before update:",x.__dict__)       #print before updating


8. Django Delete Data
>>> y=x;y.delete()


          