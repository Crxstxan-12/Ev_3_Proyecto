from django.urls import path
from .views import InscripcionListView, InscripcionCreateView, InscripcionDeleteView

urlpatterns = [
    path('', InscripcionListView.as_view(), name='inscripcion_list'),
    path('nueva/', InscripcionCreateView.as_view(), name='inscripcion_create'),
    path('<int:pk>/eliminar/', InscripcionDeleteView.as_view(), name='inscripcion_delete'),
]