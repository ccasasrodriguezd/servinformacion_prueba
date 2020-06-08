from django.db import models

# Create your models here.

class Municipio(models.Model):
    nombre = models.CharField(max_length=64)
     
    def __str__(self):
        return f"{self.nombre}"

class Comuna(models.Model):
    nombre = models.CharField(max_length=64)
    municipio_id = models.ForeignKey(Municipio, on_delete=models.CASCADE, related_name="municipioOnComuna")

    def __str__(self):
        return f"{self.nombre} "

class Barrio(models.Model):
    nombre = models.CharField(max_length=64)
    comuna_id = models.ForeignKey(Comuna, on_delete=models.CASCADE, related_name="comunaOnBarrio")

    def __str__(self):
        return f"{self.nombre} "

class Puesto(models.Model):
    nombre = models.CharField(max_length=64)
    direccion = models.CharField(max_length=64)
    municipio_id = models.ForeignKey(Municipio, on_delete=models.CASCADE, related_name="municipioOnPuesto")

    def __str__(self):
        return f"{self.nombre} {self.direccion} "

class Capitan(models.Model):
    nombres = models.CharField(max_length=64)
    apellidos = models.CharField(max_length=64)
    telefono = models.IntegerField()
   
    def __str__(self):
        return f"{self.nombres} {self.apellidos}"

class CapitanComuna(models.Model):
    comuna_id = models.ForeignKey(Comuna, on_delete=models.CASCADE, related_name="comunaOnCapitanComuna")
    capitan_id = models.ForeignKey(Capitan, on_delete=models.CASCADE, related_name="capitanOnCapitanComuna")

    def __str__(self):
        return f" {self.capitan_id.nombres} "

class Lider(models.Model):
    nombres = models.CharField(max_length=64)
    apellidos = models.CharField(max_length=64,)
    telefono = models.IntegerField()
    capitan_id = models.ForeignKey(Capitan, on_delete=models.CASCADE, related_name="capitanOnLider")

    def __str__(self):
        return f"{self.nombres} {self.apellidos}"

class LiderREsponsableBarrios(models.Model):
    lider_id = models.ForeignKey(Lider, on_delete=models.CASCADE, related_name="liderOnLiderREsponsableBarrio")
    capitan_comuna_id = models.ForeignKey(CapitanComuna, on_delete=models.CASCADE, related_name="capitanComunaOnLiderREsponsableBarrio")
    barrio_id = models.ForeignKey(Barrio, on_delete=models.CASCADE, related_name="barrioOnLiderREsponsableBarrio")

    def __str__(self):
        return f"{self.lider_id}"

class Votante(models.Model):
    nombres = models.CharField(max_length=64)
    apellidos = models.CharField(max_length=64)
    direccion = models.CharField(max_length=64)
    telefono = models.IntegerField()
    id_documento = models.IntegerField()
    lider_id = models.ForeignKey(Lider, on_delete=models.CASCADE, related_name="liderOnVotante")
    barrio_id = models.ForeignKey(Barrio, on_delete=models.CASCADE, related_name="barrioOnVotante")
    puesto_votacion_id = models.ForeignKey(Puesto, on_delete=models.CASCADE, related_name="puestpOnVotante")
    mesa = models.IntegerField()

    
    def __str__(self):
        return f"{self.nombres}"


