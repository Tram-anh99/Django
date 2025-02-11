from django.urls import path
from . import views

urlpatterns = [
    path('msvt/', views.msvt, name='msvt'),
]