from django.contrib import admin
from .models import Curso

@admin.register(Curso)
class CursoAdmin(admin.ModelAdmin):
    list_display = ("id", "codigo", "nombre", "cupos")
    search_fields = ("codigo", "nombre")
