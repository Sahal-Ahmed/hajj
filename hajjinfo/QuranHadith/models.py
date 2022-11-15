from django.db import models
from ckeditor.fields import RichTextField

# Create your models here.
class hadith(models.Model):
    title = models.CharField(max_length=100, blank=True)
    description = RichTextField(blank=True, null=True)
    image = models.ImageField(upload_to='about/', blank=False)