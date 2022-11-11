from django.db import models

# Create your models here.
class hadith(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = models.TextField(max_length=800, blank=False)
    image = models.ImageField(upload_to='about/', blank=False)