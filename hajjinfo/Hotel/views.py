from django.shortcuts import render, redirect
from .forms import *
from django.http import HttpResponseRedirect
from Hotel.models import *

from django.contrib.auth import login, authenticate

from operator import itemgetter
from django.contrib import messages
from django.db import connection
# Create your views here.
def hotel(request):
    hotels = Hotel_info.objects.all()
    context={'hotel': hotels}
    return render(request,'hotel/hotel.html',context)


def RegistrationForm(request):
    if request.method == "POST":
        Ownerform = OwnerRegistrationForm(request.POST)
        if Ownerform.is_valid():
            Ownerform.save()
            return redirect('login')

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
                em = email
                
                owner = Owner.objects.raw('SELECT * FROM hotel_owner WHERE email = %s', [em])
                for o in owner:
                    fname = o.first_name
                    lname = o.last_name
                    eml = o.email
                    oid = o.id
                    contact = o.contact
                    

                context = {
                    
                    'fname' : fname, 
                    'lname' : lname,
                    'email': eml,
                    'orderid':oid,
                    'contact':contact,
                    
                }
                # cursor3 = connection.cursor()
                # personbyem = cursor3.execute("select * from hotel_owner where email=%s",[em])
                # print(personbyem)
                return render(request,'hotel/profile.html',context)
                break
            i+=1
        else:
            messages.info(request, 'check your email and password')
            return redirect('login')

    return render(request, 'hotel/login.html')
    

def profile(request):
    
    return render(request, 'hotel/profile.html')

def HotelInfo(request):
    if request.method == "POST":
        form = HotelInfoForm(data=request.POST, files=request.FILES)
        if form.is_valid():
            form.save()
            #messages.SUCCESS(request,'New Hotel Added Successfully')
            return redirect('hotelinfo') 

        else:
            return render(request, 'hotel/hotelinfo.html',{'form' : form})

    hform = HotelInfoForm()
    context = {'form':hform}
    return render(request, 'hotel/hotelinfo.html',context)


def GetHotelInfo(request, slug):
    hdetails = Hotel_info.objects.get(slug=slug)
    context = {'hotel': hdetails}
    return render(request, 'hotel/room.html', context)


def RoomInfo(request):
    if request.method == "POST":
        form = RoomInfoForm(data=request.POST, files=request.FILES)
        if form.is_valid():
            form.save()
            #messages.SUCCESS(request,'New Hotel Added Successfully')
            return redirect('room') 

        else:
            return render(request, 'hotel/roominfo.html',{'form' : form})

    rform = RoomInfoForm()
    context = {'form':rform}
    return render(request, 'hotel/roominfo.html',context)