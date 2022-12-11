from django.shortcuts import render, redirect
from .forms import OwnerRegistrationForm
from django.http import HttpResponseRedirect
from .models import Owner

from django.contrib.auth import login, authenticate

from operator import itemgetter
from django.contrib import messages
from django.db import connection
# Create your views here.
def hotel(request):
    return render(request,'hotel/hotel.html')


def RegistrationForm(request):
    if request.method == "POST":
        Ownerform = OwnerRegistrationForm(request.POST)
        if Ownerform.is_valid():
            Ownerform.save()
            return HttpResponseRedirect('/login/')

        else:
            return render(request, 'hotel/registration.html',{'form' : Ownerform})


    Ownerform = OwnerRegistrationForm()
    context = {'form' : Ownerform}
    return render(request, 'hotel/registration.html',context)

def LoginForm(request):
    #con = mysql.connector.connect(host = "localhost", user = "root", passwd = "", database = "hajjinfo")
    cursor = connection.cursor()
    #con2 = mysql.connector.connect(host = "localhost", user = "root", passwd = "", database = "hajjinfo")
    cursor2 = connection.cursor()
    sqlcomand = "select email from hotel_owner"
    sqlcomand2 = "select password from hotel_owner"
    cursor.execute(sqlcomand)
    cursor2.execute(sqlcomand2)
    e = []
    p = []
    for i in cursor:
        e.append(i)
    for j in cursor2:
        p.append(j)
    res = list(map(itemgetter(0),e))
    res2 = list(map(itemgetter(0),p))
    print(res)
    print(res2)
    if request.method == "POST":
        email = request.POST['email']
        password = request.POST['password']
        i = 0
        k = len(res)
        while i < k:
            if res[i] == email and res2[i] == password:
                return render(request,'hotel/profile.html',{'email':email})
                break
            i+=1
        else:
            messages.info(request, 'check your email and password')
            return redirect('login')

    return render(request, 'hotel/login.html')
    

def profile(request):
    return render(request, 'hotel/profile.html')