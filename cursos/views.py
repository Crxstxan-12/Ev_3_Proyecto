from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.contrib import messages
from django.contrib.messages.views import SuccessMessageMixin
from django.urls import reverse_lazy
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Curso
from .forms import CursoForm

class CursoListView(LoginRequiredMixin, ListView):
    model = Curso

class CursoDetailView(LoginRequiredMixin, DetailView):
    model = Curso

class CursoCreateView(PermissionRequiredMixin, SuccessMessageMixin, CreateView):
    permission_required = "cursos.add_curso"
    model = Curso
    form_class = CursoForm
    success_url = reverse_lazy("curso_list")
    success_message = "Curso creado correctamente"

class CursoUpdateView(PermissionRequiredMixin, SuccessMessageMixin, UpdateView):
    permission_required = "cursos.change_curso"
    model = Curso
    form_class = CursoForm
    success_url = reverse_lazy("curso_list")
    success_message = "Curso actualizado correctamente"

class CursoDeleteView(PermissionRequiredMixin, DeleteView):
    permission_required = "cursos.delete_curso"
    model = Curso
    success_url = reverse_lazy("curso_list")

    def delete(self, request, *args, **kwargs):
        messages.success(request, "Curso eliminado correctamente")
        return super().delete(request, *args, **kwargs)
