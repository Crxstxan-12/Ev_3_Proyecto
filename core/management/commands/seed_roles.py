# python e:\Analista Programador\Ev_3_Proyecto\Ev_3_Proyecto\core\management\commands\seed_roles.py
from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group, Permission
from django.contrib.contenttypes.models import ContentType
from alumnos.models import Alumno
from cursos.models import Curso
from inscripciones.models import Inscripcion

ROLE_DEFS = {
    "administrador": {"add", "change", "delete", "view"},
    "editor": {"add", "change", "view"},
    "usuario": {"view"},
}

MODELS = [Alumno, Curso, Inscripcion]

class Command(BaseCommand):
    def handle(self, *args, **kwargs):
        for role, actions in ROLE_DEFS.items():
            group, _ = Group.objects.get_or_create(name=role)
            perms = []
            for model in MODELS:
                ct = ContentType.objects.get_for_model(model)
                for action in actions:
                    codename = f"{action}_{model._meta.model_name}"
                    perms.append(Permission.objects.get(content_type=ct, codename=codename))
            group.permissions.set(perms)
        self.stdout.write("Roles configurados: administrador, editor, usuario")