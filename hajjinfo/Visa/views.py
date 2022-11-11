from django.shortcuts import render

# Create your views here.
def visa(request):
    return render(request,'visa/visa.html',{})