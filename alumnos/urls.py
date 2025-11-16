from django.urls import path
from .views import (
    AlumnoListView, AlumnoDetailView,
    AlumnoCreateView, AlumnoUpdateView, AlumnoDeleteView
)

urlpatterns = [
    path('', AlumnoListView.as_view(), name='alumno_list'),
    path('nuevo/', AlumnoCreateView.as_view(), name='alumno_create'),
    path('<int:pk>/', AlumnoDetailView.as_view(), name='alumno_detail'),
    path('<int:pk>/editar/', AlumnoUpdateView.as_view(), name='alumno_update'),
    path('<int:pk>/eliminar/', AlumnoDeleteView.as_view(), name='alumno_delete'),
]