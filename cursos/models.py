from django.db import models

class Curso(models.Model):
    codigo = models.CharField(max_length=20, unique=True)
    nombre = models.CharField(max_length=150)
    cupos = models.PositiveIntegerField()

    def __str__(self):
        return f"{self.codigo} - {self.nombre}"
