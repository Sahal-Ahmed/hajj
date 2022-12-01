from django.contrib import admin
from .models import Owner

# Register your models here.
class OwnerAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'email', 'contact', 'hotel_name')
admin.site.register(Owner, OwnerAdmin)
