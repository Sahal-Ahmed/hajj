from django.shortcuts import render
from .forms import OwnerRegistrationForm

# Create your views here.
def hotel(request):
    return render(request,'hotel/hotel.html')


def RegistrationForm(request):
    Ownerform = OwnerRegistrationForm()
    context = {'form' : Ownerform}
    return render(request, 'hotel/registration.html',context)