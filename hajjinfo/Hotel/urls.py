from django.urls import path
from . import views

urlpatterns = [
    #path("", views.homepage, name='index'),
    path('', views.hotel, name='hotel'),
    path('registration/', views.RegistrationForm, name='register'),
    path('login/', views.LoginForm, name='login'),
    path('profile/', views.profile, name='profile'),
    path('info', views.HotelInfo, name='hotelinfo'),
    path('info/<slug>/', views.GetHotelInfo, name='hoteldetails'),
     path('rooms/', views.RoomInfo, name='room'),
] 