from django.contrib import admin
from django.contrib.auth.models import User, Group
from django.contrib.admin import ModelAdmin, actions
from .models import  Municipio,Comuna,Barrio,Puesto,Capitan,CapitanComuna,Lider,LiderREsponsableBarrios,Votante
# Register your models here.

class MyUserAndmin(admin.ModelAdmin):
    list_display = ('username','date_joined','is_superuser')
    list_filter = ('date_joined',)



admin.site.unregister(User)
admin.site.unregister(Group)
admin.site.register(User, MyUserAndmin)
admin.site.site_header = 'Servinformacionapp'
admin.site.register(Municipio)
admin.site.register(Comuna)
admin.site.register(Barrio)
admin.site.register(Puesto)
admin.site.register(Capitan)
admin.site.register(CapitanComuna)
admin.site.register(Lider)
admin.site.register(LiderREsponsableBarrios)
admin.site.register(Votante)