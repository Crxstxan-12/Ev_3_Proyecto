from django import forms
from .models import Alumno

class AlumnoForm(forms.ModelForm):
    class Meta:
        model = Alumno
        fields = ["rut", "nombre", "email"]

    def clean_rut(self):
        raw = self.cleaned_data["rut"].strip().upper().replace(".", "")
        if not raw:
            raise forms.ValidationError("Ingrese un RUT")
        cuerpo = raw.split("-")[0]
        if not cuerpo.isdigit():
            raise forms.ValidationError("RUT inválido")
        s, f = 0, 2
        for d in reversed(cuerpo):
            s += int(d) * f
            f = 2 if f == 7 else f + 1
        r = 11 - (s % 11)
        dv_calc = "0" if r == 11 else "K" if r == 10 else str(r)
        return f"{cuerpo}-{dv_calc}"