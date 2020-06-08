import requests
from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from .models import Municipio,Comuna,Barrio,Puesto,Capitan,CapitanComuna,Lider,LiderREsponsableBarrios,Votante
from .serializers import MunicipioSerializer,ComunaSerializer,BarrioSerializer,CapitanSerializer,LiderComunaSerializer,LiderREsponsableBarriosSerializer,VotanteSerializer,PuestoSerializer
from rest_framework import viewsets
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, Http404, redirect
from django.http  import HttpResponse, HttpResponseRedirect
from django.contrib.auth.forms import AuthenticationForm
from django.urls import reverse
# Create your views here.

class MunicipiosView(viewsets.ModelViewSet):
    queryset = Municipio.objects.all()
    serializer_class =  MunicipioSerializer

class PuestoView(viewsets.ModelViewSet):
    queryset = Puesto.objects.all()
    serializer_class = PuestoSerializer


def index(request):
    if not request.user.is_authenticated:
        return render(request, "servinformacionapp/login.html", {"message": "Go in"})
    context = {
        "user" : request.user
    }
    return render(request, "servinformacionapp/user.html", context)

def admin_view(request):

    return super(MyAdmin, self).response_change(request, obj)

def login_view(request):
    print("hello world")
    username = request.POST["username"]
    password = request.POST["password"]
    user = authenticate(request, username=username, password=password)
    
    if user is not None:
        object_user = User.objects.get(username= user)
        user_id = object_user.id
        login(request, user)
        context = {
            
            "user_id" : user_id
        }
        return render(request, 'servinformacionapp/user.html', context)
    else:
        return render(request, "servinformacionapp/login.html", {"message":"Invalid credencials, you need to register"})

def registrar_votante(request):
    barrio_object = Barrio.objects.all()
    puesto_object = Puesto.objects.all()
    object_user = User.objects.all()
    context = {
        "object_user" : object_user,
        "barrios" : barrio_object,
        "puestos": puesto_object,
        "lideres" : object_user
    }
    return render(request, 'servinformacionapp/crearvotante.html', context)

def crear_votante(request, user_id):
    print("hello")
    object_user = User.objects.get(pk=user_id)
    object_user_id = object_user.id
    nombres = request.POST["nombres"]
    apellidos = request.POST["apellidos"]
    direccion = request.POST["direccion"]
    telefono = request.POST["telefono"]
    id_documento = request.POST["identificacion"]
    lider_id = request.POST["lider"]
    barrio_id = request.POST["barrio"]
    puesto_votacion_id = request.POST["puesto"]
    mesa = request.POST["mesa"]
    v = Votante(nombres=nombres,apellidos=apellidos,direccion=direccion,
        telefono=telefono, id_documento=id_documento, lider_id=lider_id,
        barrio_id=barrio_id,puesto_votacion_id=puesto_votacion_id, mesa=mesa )
    v.save()
    return render(request, 'servinformacionapp/votantecreado.html')

def logout_view(request):
    logout(request)
    return HttpResponseRedirect(reverse("index"))

