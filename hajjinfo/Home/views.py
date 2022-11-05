from django.shortcuts import render
from .models import post, service
# Create your views here.
def homepage(request):
    hpost = post.objects.all()[0]
    services = service.objects.all()
    context ={
        'post':hpost,
        'serv': services
    }
    return render(request, 'home/home.html',context)


def howto(request):
    return render(request,'home/howto.html',{})

def history(request):
    return render(request,'home/history.html',{})


def blog(request):
    return render(request,'home/blog.html',{})

