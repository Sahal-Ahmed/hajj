from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
import uuid
from django_countries.fields import CountryField
# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=50,blank=False)

    def __str__(self):
        return self.name
    

class Owner(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False, max_length=10)
    first_name = models.CharField(max_length=50, null=True)
    last_name = models.CharField(max_length=50, null=True)
    email = models.EmailField(max_length=254, unique=True)
    contact = PhoneNumberField()
    hotel_name = models.CharField(max_length=100, null=True)
    image = models.ImageField(upload_to='hotel/', blank=False)
    state = models.CharField(max_length=100)
    city = models.CharField(max_length=30)
    country = CountryField(max_length=30)   
    password = models.CharField(max_length=50)
    

    def __str__(self):
        return self.email


class Hotel_Room_info(models.Model):
    owner = models.OneToOneField(Owner, on_delete=models.CASCADE)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    room_image = models.FileField(upload_to='room/', blank=False)
    available = models.IntegerField()