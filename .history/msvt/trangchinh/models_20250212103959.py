from django.db import models

# Create your models here.
class Member(models.Model):
  firstname = models.CharField(max_length=255)
  lastname = models.CharField(max_length=255)
  
  class Phanbon(models.Model):
  tenp = models.CharField(max_length=255)
  thongtin = models.CharField(max_length=255)