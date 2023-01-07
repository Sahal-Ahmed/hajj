from django.contrib import admin
from .models import *

# Register your models here.
class OwnerAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'email', 'contact', 'password')
admin.site.register(Owner, OwnerAdmin)

class RoomAdmin(admin.ModelAdmin):
    list_display = ('id','type','image')
admin.site.register(Room, RoomAdmin)


class Hotel_infoAdmin(admin.ModelAdmin):
    list_display = ('owner','hotel_name','banner','state','city','country','room','price','available','slug')
admin.site.register(Hotel_info, Hotel_infoAdmin)