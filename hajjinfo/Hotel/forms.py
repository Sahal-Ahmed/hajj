from django import forms
from .models import Owner, Hotel_info, Room
from phonenumber_field.formfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberPrefixWidget

class OwnerRegistrationForm(forms.ModelForm):
    
    
    class Meta:
        model = Owner
        fields = ('first_name','last_name','email','contact','password')
        widgets = {
            'first_name' : forms.TextInput(attrs={'class':'form-control'}),
            'last_name' : forms.TextInput(attrs={'class':'form-control'}),
            'email' : forms.EmailInput(attrs={'class':'form-control'}),
            'contact' : forms.NumberInput(attrs={'class':'form-control','placeholder':'e.g. +12125552368'}),
            'password' : forms.PasswordInput(attrs={'class':'form-control'}),
        }

class HotelInfoForm(forms.ModelForm):
    
    class Meta:

       model = Hotel_info
       fields = ('owner','hotel_name','banner','state','city','country','room','price','available') 
       widgets = {
            'owner' : forms.Select(attrs={'class':'form-control bg-light'}),
            'hotel_name' : forms.TextInput(attrs={'class':'form-control bg-light'}),
            'banner' : forms.FileInput(attrs={'class':'form-control bg-light'}),            
            'state' : forms.TextInput(attrs={'class':'form-control bg-light'}),
            'city' : forms.TextInput(attrs={'class':'form-control bg-light'}),
            'country' : forms.Select(attrs={'class':'form-control bg-light'}),
            'room' : forms.Select(attrs={'class':'form-control bg-light'}),
            'price' : forms.NumberInput(attrs={'class':'form-control bg-light'}),
            'available' : forms.NumberInput(attrs={'class':'form-control bg-light'}),
        }

class RoomInfoForm(forms.ModelForm):
    class Meta:

       model = Room
       fields = ('type','image') 
       widgets = {
            'type' : forms.TextInput(attrs={'class':'form-control bg-light'}),            
            'image' : forms.FileInput(attrs={'class':'form-control bg-light'}),
            
        }     