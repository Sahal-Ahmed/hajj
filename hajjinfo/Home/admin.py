from django.contrib import admin
from .models import homepost
from .models import post
from .models import service
# Register your models here.
admin.site.register(homepost)
admin.site.register(post)
admin.site.register(service)