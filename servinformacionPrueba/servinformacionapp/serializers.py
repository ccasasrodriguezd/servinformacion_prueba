from rest_framework import serializers
from .models import Municipio,Comuna,Barrio,Puesto,Capitan,CapitanComuna,Lider,LiderREsponsableBarrios,Votante

class MunicipioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Municipio
        fields = ('id','nombre')

class PuestoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Puesto
        fields = ('id','nombre','direccion','municipio_id')

class ComunaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comuna
        fields = ('id','nombre','municipio_id')

class BarrioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Barrio
        fields = ('id','nombre','comuna_id')

class CapitanSerializer(serializers.ModelSerializer):
    class Meta:
        model = Capitan
        fields = ('id','nombres','apellidos','telefono')

class LiderComunaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Lider
        fields = ('id','nombres','apellidos','telefono','capitan_id')

class LiderREsponsableBarriosSerializer(serializers.ModelSerializer):
    class Meta:
        model = LiderREsponsableBarrios
        fields = ('id','lider_id','capitan_comuna_id','barrio_id')

class VotanteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Votante
        fields = ('id','nombres ','apellidos','direccion','telefono','id_documento'
                'lider_id','barrio_id','puesto_votacion_id','mesa')