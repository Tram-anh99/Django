from django.db import models

# Create your models here.
class Member(models.Model):
  firstname = models.CharField(max_length=255)
  lastname = models.CharField(max_length=255)
  
class Phanbon(models.Model):
   ten = models.CharField(max_length=255)
    hongtin = models.CharField(max_length=255)