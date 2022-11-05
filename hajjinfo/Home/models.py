from django.db import models

# Create your models here.
class homepost(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = models.TextField(max_length=700, blank=False)
    image = models.ImageField(upload_to='about/', blank=False)


class post(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = models.TextField(max_length=700, blank=False)
    image = models.ImageField(upload_to='about/', blank=False)

class service(models.Model):
    name = models.CharField(max_length=100, blank=True)
    image = models.ImageField(upload_to='image/', blank = False)