from django.db import models
from django.utils import timezone



# Create your models here.
class Faq(models.Model):
    id = models.IntegerField(primary_key=True)
    question = models.CharField(max_length=400)
    answer = models.CharField(max_length=700)
    counter = models.IntegerField()

class Statistic(models.Model):
    id = models.IntegerField(primary_key=True)
    timestamp = models.DateTimeField()
    Faq_id = models.ForeignKey(Faq, on_delete=models.CASCADE)

    def save(self, *args, **kwargs):
        ''' On save, update timestamps '''
        if not self.id:
            self.created = timezone.now()
        self.modified = timezone.now()
        return super(Statistic, self).save(*args, **kwargs)