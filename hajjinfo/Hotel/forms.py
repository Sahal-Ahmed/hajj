from django import forms
from .models import Owner
from phonenumber_field.formfields import PhoneNumberField
from phonenumber_field.widgets import PhoneNumberPrefixWidget

class OwnerRegistrationForm(forms.ModelForm):
    contact = PhoneNumberField(
        widget=PhoneNumberPrefixWidget(initial="Bn")
    )
    password = forms.CharField(widget=forms.PasswordInput)
    class Meta:
        model = Owner
        fields = ('first_name','last_name','email','contact','hotel_name','password')