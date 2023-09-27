#this file is created by me and function is written inside it for displaying in url

from django.http import HttpResponse
from django.shortcuts import render

def index(request):
    return render(request, 'navbar.html')

def hello(request):
    return HttpResponse("hello and welcome to index page.")

def about(request):
    return HttpResponse("This is About Page:My Name is Aman Kumar")

def home(request):
    return HttpResponse("Welcome to the Home Page")




