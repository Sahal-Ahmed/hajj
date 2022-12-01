from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
import uuid
# Create your models here.
class Owner(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    first_name = models.CharField(max_length=50, null=True)
    last_name = models.CharField(max_length=50, null=True)
    email = models.EmailField(max_length=254)
    contact = PhoneNumberField()
    hotel_name = models.CharField(max_length=100, null=True)
    
