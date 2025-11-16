from django import forms
from .models import Inscripcion
from cursos.models import Curso
from alumnos.models import Alumno

class InscripcionForm(forms.ModelForm):
    class Meta:
        model = Inscripcion
        fields = ["alumno", "curso"]
        widgets = {
            "alumno": forms.Select(attrs={"class": "form-select"}),
            "curso": forms.Select(attrs={"class": "form-select"}),
        }

    def clean(self):
        cleaned = super().clean()
        alumno = cleaned.get("alumno")
        curso = cleaned.get("curso")
        if not alumno or not curso:
            return cleaned
        if Inscripcion.objects.filter(alumno=alumno, curso=curso).exists():
            raise forms.ValidationError("El alumno ya está inscrito en este curso")
        cupos = curso.cupos
        inscritos = Inscripcion.objects.filter(curso=curso).count()
        if inscritos >= cupos:
            raise forms.ValidationError("No hay cupos disponibles para este curso")
        return cleaned