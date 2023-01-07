from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
import uuid
from django_countries.fields import CountryField
from django.template.defaultfilters import slugify
from django.urls import reverse
# Create your models here.
class Room(models.Model):
    type = models.CharField(max_length=50,blank=False)
    image = models.ImageField(upload_to='room/', blank=False)

    def __str__(self):
        return self.type
    

class Owner(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False, max_length=10)
    first_name = models.CharField(max_length=50, null=True)
    last_name = models.CharField(max_length=50, null=True)
    email = models.EmailField(max_length=254, unique=True)
    contact = PhoneNumberField()
    password = models.CharField(max_length=50)
    

    def __str__(self):
        return self.email


class Hotel_info(models.Model):
    owner = models.OneToOneField(Owner, on_delete=models.CASCADE)
    hotel_name = models.CharField(max_length=100, null=True, unique=True)
    banner = models.ImageField(upload_to='hotel/', null=True)
    state = models.CharField(max_length=100)
    city = models.CharField(max_length=30)
    country = CountryField(max_length=30)   
    room = models.ForeignKey(Room, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=8, decimal_places=2)
    available = models.IntegerField()
    slug = models.SlugField(unique=True, null=True)

    
    def get_hotel_url(self):
        return reverse('hoteldetails', kwargs={'slug': self.slug})
    
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.hotel_name)
        return super().save(*args, **kwargs)