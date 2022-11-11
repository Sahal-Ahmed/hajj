from django.urls import path
from . import views

urlpatterns = [
    #path("", views.homepage, name='index'),
    path('', views.qhadith, name='hadith'),
   
] 