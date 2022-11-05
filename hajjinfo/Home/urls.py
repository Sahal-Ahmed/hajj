from django.urls import path
from . import views

urlpatterns = [
    #path("", views.homepage, name='index'),
    path('', views.homepage, name='home'),
    path('howto/', views.howto, name='howto'),
    path('history/', views.history, name='history'),
    path('blog/', views.blog, name='blog'),
] 