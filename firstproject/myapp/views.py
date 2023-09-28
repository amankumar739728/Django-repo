from django.shortcuts import render
from django.http import HttpResponse
from .models import UserProfile

# Create your views here.
def home(request):
    return HttpResponse("Hello world!")

def user_profile(request):
    users = UserProfile.objects.all()
    return render(request, 'templates/user_profile.html', {'users': users})


def details(request, id):
    user = UserProfile.objects.get(id=id)
    return render(request, 'templates/details.html', {'user': user})
      