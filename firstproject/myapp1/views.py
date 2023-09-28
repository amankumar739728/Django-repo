from django.shortcuts import render
from django.http import HttpResponse
from .models import UserProfile
from django.template import loader

# Create your views here.

# def home(request):
#     return HttpResponse("Hello world!")

def main(request):
    template = loader.get_template('main.html')
    return HttpResponse(template.render())

def user_profile(request):
    users = UserProfile.objects.all()
    return render(request, 'templates/user_profile1.html', {'users': users})


def details(request, id):
    user = UserProfile.objects.get(id=id)
    return render(request, 'templates/details1.html', {'user': user})

# def user_profile(request):
#     users = UserProfile.objects.all()
#     return render(request, 'templates/user_profile.html', {'users': users})


# def details(request, id):
#     user = UserProfile.objects.get(id=id)
#     return render(request, 'templates/details.html', {'user': user})
      
    