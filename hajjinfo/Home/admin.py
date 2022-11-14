from django.contrib import admin

from .models import post
from .models import service
from .models import perform
# Register your models here.
class postAdmin(admin.ModelAdmin):
    list_display = ('id','title','description','image')

admin.site.register(post, postAdmin)
admin.site.register(service)
admin.site.register(perform)