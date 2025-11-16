# Ev_3_Proyecto
Cristian Cifuentes
Cristobal hernandez


## Instalación

```bash
# 1) Crear y activar entorno
python -m venv .venv
# Windows
.\.venv\Scripts\activate

# 2) Instalar dependencias
pip install -r requirements.txt

# 3) Configurar variables de entorno (.env)
DB_NAME=mi_registro_db
DB_USER=root
DB_PASSWORD=tu_password
DB_HOST=localhost
DB_PORT=3306
```

## Configuración

- Base de datos y carga de `.env` en `mi_registro_completo/settings.py`
- Directorio de templates y estáticos:
  - Templates: `templates/`
  - Estáticos: `static/` (CSS principal en `static/css/js/app.css`)
- Idioma y zona horaria: `es-es`, `America/Santiago`

## Migraciones y arranque

```bash
# Generar y aplicar migraciones
python manage.py makemigrations
python manage.py migrate

# Crear superusuario
python manage.py createsuperuser

# Poblar roles y permisos (administrador, editor, usuario)
python manage.py seed_roles

# Arrancar el servidor
python manage.py runserver
```

## Roles y permisos

- `administrador`: agregar, modificar, eliminar, ver
- `editor`: agregar, modificar, ver
- `usuario`: ver
- Comando: `core/management/commands/seed_roles.py` crea grupos y asigna permisos a:
  - `alumnos`, `cursos`, `inscripciones`

## Apps y rutas

- Core
  - Home: `core/urls.py` → `/` usando `templates/core/home.html`
- Alumnos: `/alumnos/` (`nuevo/`, `<id>/`, `<id>/editar/`, `<id>/eliminar/`)
- Cursos: `/cursos/` (CRUD similar)
- Inscripciones: `/inscripciones/` (crear y eliminar)
- Autenticación:
  - Login: `/login/` (vista de Django + template `templates/registration/login.html`)
  - Logout: `/logout/` mediante POST (botón en navbar)
- Admin de Django: `/admin/` (botón “Admin” visible solo si `user.is_staff`)

## UI y estilos

- Bootstrap 5.3 y CSS custom (`static/css/js/app.css`)
- Formularios en tarjetas:
  - `alumnos/alumno_form.html`
  - `cursos/curso_form.html`
  - `inscripciones/inscripcion_form.html`
- Listas con tabla `striped` y `hover`
- Login con diseño 
  - `templates/registration/login.html`

## Validaciones

- Alumno (`alumnos/forms.py`):
  - Validación de RUT y normalización tipo `XXXXXXXX-DV`
- Curso (`cursos/forms.py`):
  - `codigo` en mayúsculas y `cupos > 0`
- Inscripción (`inscripciones/forms.py`):
  - Única por alumno/curso, sin exceder cupos

## Navbar y control de acceso

- Enlaces visibles por permisos (botones de “Nuevo/Editar/Eliminar”)
- Botón “Admin” solo para `is_staff` en `templates/base.html`

## Comandos útiles

```bash
# Ejecutar tests (si los agregas):)
python manage.py test

# Revisar permisos de un usuario en shell
python manage.py shell
>>> from django.contrib.auth.models import User
>>> u = User.objects.get(username="tu_usuario")
>>> u.groups.all(), u.is_staff
```

## Estructura principal

- `mi_registro_completo/urls.py` → enrutamiento raíz
- `core/urls.py` y `templates/core/home.html` --> pantalla de inicio
- `alumnos/`, `cursos/`, `inscripciones/` --> CRUD y formularios
- `templates/base.html` --> navbar, mensajes y layout base
- `static/css/js/app.css` --> estilos del sitio

## Seguridad

- No incluir secretos en el repositorio (`.env` está en `.gitignore`)
- Logout por POST con CSRF
- Permisos granulares por app y modelo

## Soporte

- Para problemas de estilos: revisar `static/css/js/app.css` y el link en `templates/base.html`
- Para errores de base de datos: verificar `.env` y credenciales MySQL
- Para permisos: ejecutar `seed_roles` y comprobar `user.groups` o `is_staff`
