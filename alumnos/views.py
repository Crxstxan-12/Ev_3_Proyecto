from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.contrib import messages
from django.contrib.messages.views import SuccessMessageMixin
from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Alumno
from .forms import AlumnoForm

class AlumnoListView(LoginRequiredMixin, ListView):
    model = Alumno

class AlumnoDetailView(LoginRequiredMixin, DetailView):
    model = Alumno

class AlumnoCreateView(PermissionRequiredMixin, SuccessMessageMixin, CreateView):
    permission_required = "alumnos.add_alumno"
    model = Alumno
    form_class = AlumnoForm
    success_url = reverse_lazy("alumno_list")
    success_message = "Alumno creado correctamente"

class AlumnoUpdateView(PermissionRequiredMixin, SuccessMessageMixin, UpdateView):
    permission_required = "alumnos.change_alumno"
    model = Alumno
    form_class = AlumnoForm
    success_url = reverse_lazy("alumno_list")
    success_message = "Alumno actualizado correctamente"

class AlumnoDeleteView(PermissionRequiredMixin, DeleteView):
    permission_required = "alumnos.delete_alumno"
    model = Alumno
    success_url = reverse_lazy("alumno_list")

    def delete(self, request, *args, **kwargs):
        messages.success(request, "Alumno eliminado correctamente")
        return super().delete(request, *args, **kwargs)
