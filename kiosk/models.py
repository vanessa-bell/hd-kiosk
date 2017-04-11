from django.db import models
import datetime

# Create your models here.
class Faqs(models.Model):
    question = models.CharField(max_length=250)
    answer = models.CharField(max_length=250)
    # counter = models.IntegerField()
