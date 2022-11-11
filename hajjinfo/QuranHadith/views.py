from django.shortcuts import render
from .models import hadith

def qhadith(request):
    hadiths = hadith.objects.all()
    context = {
        'hadith':hadiths
    }
    return render(request,'quran&hadith/hadith.html',context)