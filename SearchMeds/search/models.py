from django.db import models

# Create your models here.
from django.db import models

# Create your models here.
class Medicine(models.Model):

    name = models.CharField( max_length=255)
    price = models.FloatField()
    manufacturer_name = models.CharField( max_length=255)
    salt_name = models.TextField(null=True)
    drug_form = models.TextField(null=True)
    pack_size = models.CharField(max_length=150)
    strength = models.TextField(null=True)
    unit = models.CharField(max_length=50, null=True)
    
    def __str__(self):
        return self.name