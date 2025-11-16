from django.contrib import admin
from .models import Inscripcion

@admin.register(Inscripcion)
class InscripcionAdmin(admin.ModelAdmin):
    list_display = ("id", "alumno", "curso", "fecha")
    list_filter = ("curso",)
    search_fields = ("alumno__nombre", "curso__nombre")
