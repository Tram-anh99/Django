from django.urls import path
from . import views

urlpatterns = [
    path('trangchinh/', views.trangchinh, name='trangchinh'),
]