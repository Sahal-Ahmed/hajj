from django.shortcuts import render
from .forms import OwnerRegistrationForm
from django.http import HttpResponseRedirect

# Create your views here.
def hotel(request):
    return render(request,'hotel/hotel.html')


def RegistrationForm(request):
    if request.method == "POST":
        Ownerform = OwnerRegistrationForm(request.POST)
        if Ownerform.is_valid():
            Ownerform.save()
            return HttpResponseRedirect('/hotel/')

        else:
            return render(request, 'hotel/registration.html',{'form' : Ownerform})


    Ownerform = OwnerRegistrationForm()
    context = {'form' : Ownerform}
    return render(request, 'hotel/registration.html',context)