from django.urls import path
from . import views

urlpatterns = [
    path('msxt/', views.members, name='members'),
]