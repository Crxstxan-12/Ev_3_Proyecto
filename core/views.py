from django.contrib import messages
from django.contrib.auth import logout
from django.contrib.auth.models import Group
from django.shortcuts import redirect, render
from .forms import RegistrationForm


def logout_view(request):
    logout(request)
    messages.success(request, "Sesión cerrada correctamente")
    return redirect("login")


def register_view(request):
    if request.user.is_authenticated:
        return redirect("home")
    if request.method == "POST":
        form = RegistrationForm(request.POST)
        if form.is_valid():
            user = form.save()
            try:
                group = Group.objects.get(name="usuario")
                user.groups.add(group)
            except Group.DoesNotExist:
                pass
            messages.success(request, "Cuenta creada correctamente. Ahora puede iniciar sesión.")
            return redirect("login")
    else:
        form = RegistrationForm()
    return render(request, "registration/register.html", {"form": form})
