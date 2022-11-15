from django.contrib import admin
from .models import *
from .models import post
from .models import service
from .models import perform
# Register your models here.
class postAdmin(admin.ModelAdmin):
    list_display = ('id','title','description','image')

admin.site.register(post, postAdmin)

class serviceAdmin(admin.ModelAdmin):
    list_display = ('id','name','image','slug')
admin.site.register(service, serviceAdmin)

class performAdmin(admin.ModelAdmin):
    list_display = ('id','title','description','image')
admin.site.register(perform, performAdmin)