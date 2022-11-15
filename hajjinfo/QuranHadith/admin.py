from django.contrib import admin
from .models import hadith

# Register your models here.
class hadithAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'description', 'image')
admin.site.register(hadith, hadithAdmin)