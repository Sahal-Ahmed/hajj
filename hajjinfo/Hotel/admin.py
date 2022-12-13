from django.contrib import admin
from .models import *

# Register your models here.
class OwnerAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'email', 'contact', 'hotel_name','image','state','city','password')
admin.site.register(Owner, OwnerAdmin)

class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id','name')
admin.site.register(Category, CategoryAdmin)


class Hotel_Room_infoAdmin(admin.ModelAdmin):
    list_display = ('owner', 'category', 'room_image', 'available')
admin.site.register(Hotel_Room_info, Hotel_Room_infoAdmin)