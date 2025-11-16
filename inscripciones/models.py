from django.db import models
from alumnos.models import Alumno
from cursos.models import Curso

class Inscripcion(models.Model):
    alumno = models.ForeignKey(Alumno, on_delete=models.CASCADE)
    curso = models.ForeignKey(Curso, on_delete=models.CASCADE)
    fecha = models.DateField(auto_now_add=True)

    class Meta:
        unique_together = ("alumno", "curso")

    def __str__(self):
        return f"{self.alumno} -> {self.curso}"
