from django import forms
from .models import Owner
from phonenumber_field.formfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberPrefixWidget

class OwnerRegistrationForm(forms.ModelForm):
    
    
    class Meta:
        model = Owner
        fields = ('first_name','last_name','email','contact','hotel_name','image','state','city','country','password')
        widgets = {
            'first_name' : forms.TextInput(attrs={'class':'form-control'}),
            'last_name' : forms.TextInput(attrs={'class':'form-control'}),
            'email' : forms.EmailInput(attrs={'class':'form-control'}),
            'contact' : forms.NumberInput(attrs={'class':'form-control','placeholder':'e.g. +12125552368'}),
            'hotel_name' : forms.TextInput(attrs={'class':'form-control'}),
            'image' : forms.ImageField(),
            'state' : forms.Textarea(attrs={'class':'form-control'}),
            'city' : forms.TextInput(attrs={'class':'form-control'}),
            'country' : forms.TextInput(attrs={'class':'form-control'}),
            'password' : forms.PasswordInput(attrs={'class':'form-control'}),
        }