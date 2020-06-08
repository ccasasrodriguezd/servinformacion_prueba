from django.urls import path, include
from servinformacionapp import views
from django.conf.urls import url
from rest_framework import routers

router = routers.DefaultRouter()
router.register('municipios', views.MunicipiosView)
router.register('puestos', views.PuestoView)

urlpatterns = [
    path("", views.index, name="index"),
    path("login", views.login_view, name="login"),
    path("logout", views.logout_view, name="logout"),
    path("registrar_votante", views.registrar_votante, name="registrar_votante"),
    path("crear_votante", views.crear_votante, name="crear_votante"),
    path('abc', include(router.urls), name="abc"),

    
]