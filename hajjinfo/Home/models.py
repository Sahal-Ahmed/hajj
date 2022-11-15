from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.


class post(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = RichTextField(blank=True, null=True)
    image = models.ImageField(upload_to='about/', blank=False)

class perform(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = RichTextField(blank=True, null=True)
    image = models.ImageField(upload_to='about/', blank=False)

class service(models.Model):
    name = models.CharField(max_length=100, blank=True)
    image = models.ImageField(upload_to='image/', blank = False)
    slug = models.SlugField(max_length=50, blank=True)
    