from django.contrib.auth.mixins import LoginRequiredMixin, PermissionRequiredMixin
from django.contrib import messages
from django.contrib.messages.views import SuccessMessageMixin
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, DeleteView
from .models import Inscripcion
from .forms import InscripcionForm

class InscripcionListView(LoginRequiredMixin, ListView):
    model = Inscripcion

class InscripcionCreateView(PermissionRequiredMixin, SuccessMessageMixin, CreateView):
    permission_required = "inscripciones.add_inscripcion"
    model = Inscripcion
    form_class = InscripcionForm
    success_url = reverse_lazy("inscripcion_list")
    success_message = "Inscripción creada correctamente"

class InscripcionDeleteView(PermissionRequiredMixin, DeleteView):
    permission_required = "inscripciones.delete_inscripcion"
    model = Inscripcion
    success_url = reverse_lazy("inscripcion_list")

    def delete(self, request, *args, **kwargs):
        messages.success(request, "Inscripción eliminada correctamente")
        return super().delete(request, *args, **kwargs)
