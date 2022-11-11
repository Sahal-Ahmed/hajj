from django.shortcuts import render

# Create your views here.
def rental(request):
    return render(request,'rental/rental.html',{})