from django.urls import path
from . import views

urlpatterns = [
    path('msct/', views.members, name='members'),
]