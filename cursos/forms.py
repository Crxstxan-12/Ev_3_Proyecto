from django import forms
from .models import Curso

class CursoForm(forms.ModelForm):
    class Meta:
        model = Curso
        fields = ["codigo", "nombre", "cupos"]
        widgets = {
            "codigo": forms.TextInput(attrs={"class": "form-control", "placeholder": "Código"}),
            "nombre": forms.TextInput(attrs={"class": "form-control", "placeholder": "Nombre"}),
            "cupos": forms.NumberInput(attrs={"class": "form-control", "min": 1}),
        }

    def clean_codigo(self):
        return self.cleaned_data["codigo"].strip().upper()

    def clean_cupos(self):
        cupos = self.cleaned_data["cupos"]
        if cupos <= 0:
            raise forms.ValidationError("Los cupos deben ser mayores a 0")
        return cupos