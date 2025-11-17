from django.urls import path
from django.views.generic import TemplateView
from .views import register_view

urlpatterns = [
    path('', TemplateView.as_view(template_name='core/home.html'), name='home'),
    path('registro/', register_view, name='register'),
]