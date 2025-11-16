from django.urls import path
from .views import (
    CursoListView, CursoDetailView,
    CursoCreateView, CursoUpdateView, CursoDeleteView
)

urlpatterns = [
    path('', CursoListView.as_view(), name='curso_list'),
    path('nuevo/', CursoCreateView.as_view(), name='curso_create'),
    path('<int:pk>/', CursoDetailView.as_view(), name='curso_detail'),
    path('<int:pk>/editar/', CursoUpdateView.as_view(), name='curso_update'),
    path('<int:pk>/eliminar/', CursoDeleteView.as_view(), name='curso_delete'),
]