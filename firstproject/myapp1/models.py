from django.db import models

# # Create your models here.
# class UserProfile(models.Model):
#     first_name = models.CharField(max_length=50)
#     last_name = models.CharField(max_length=50)
#     email = models.EmailField()

#     def __str__(self):
#         return f"{self.first_name} {self.last_name}"
    
    
#updating the model

class UserProfile(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.EmailField()
    phone = models.IntegerField(null=True)
    joined_date = models.DateField(null=True)
    
    def __str__(self):
        return f"{self.first_name} {self.last_name}"


#Remember to create and apply the migrations after making changes to the model. You can do this with the following commands:

# python manage.py makemigrations
# python manage.py migrate
