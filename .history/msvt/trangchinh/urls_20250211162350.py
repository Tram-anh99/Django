from django.urls import path
from . import views

urlpatterns = [
    path('trangchính/', views.msvt, name='msvt'),
]