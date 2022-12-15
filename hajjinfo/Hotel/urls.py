from django.urls import path
from . import views

urlpatterns = [
    #path("", views.homepage, name='index'),
    path('', views.hotel, name='hotel'),
    path('registration/', views.RegistrationForm, name='register'),
    path('login/', views.LoginForm, name='login'),
    path('profile/', views.profile, name='profile'),
    path('rooms/', views.RoomInfo, name='room'),
] 