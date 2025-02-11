from django.urls import path
from . import views

urlpatterns = [
    path('trangchinhs/', views.msvt, name='msvt'),
]