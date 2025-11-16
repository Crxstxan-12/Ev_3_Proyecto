from django.db import models

class Alumno(models.Model):
    rut = models.CharField(max_length=12, unique=True)
    nombre = models.CharField(max_length=120)
    email = models.EmailField(unique=True)

    def __str__(self):
        return f"{self.nombre} ({self.rut})"
