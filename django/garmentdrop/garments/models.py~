# -*- coding: utf-8 -*-
from __future__ import unicode_literals

import uuid
from django.db import models

from django.db.models.signals import post_save
from django.dispatch import receiver

from seasons.models import DropDate
from sorl.thumbnail import ImageField

class Garment(models.Model):
    
    uuid = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(blank=True, null=True)
    descrption = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    color = models.ForeignKey('Colorway', on_delete=models.CASCADE, blank=True)
    type = models.ForeignKey('GarmentType', on_delete=models.CASCADE, blank=True)
    fabric = models.ForeignKey('GarmentFabric', blank=True)
    drop_date = models.ForeignKey(DropDate, blank=True)

    quantity = models.IntegerField(default=0)
    price = models.DecimalField(max_digits=6, decimal_places=2, blank=True, null=True)

class Colorway(models.Model):

    name = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)    
    created_at = models.DateField(auto_now_add=True)

class GarmentType(models.Model):

    description = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255)
    created_at = models.DateField(auto_now_add=True)

class GarmentSize(models.Model):
    
    XS = 'XS'
    S = 'S'
    M = 'M'
    L = 'L'
    XL = 'XL'
    XXL = 'XXL'

    GARMENT_SIZE_CHOICES = (
        (XS, 'EXTRA SMALL'),
        (S, 'SMALL'),
        (M, 'MEDIUM'),
        (L, 'LARGE'),
        (XL, 'EXTRA LARGE'),
        (XXL, 'EXTRA EXTRA LARGE'),
    )

    description = models.TextField(blank=True, null=True)
    size = models.CharField(max_length=3, choices=GARMENT_SIZE_CHOICES, default=L)
    length = models.IntegerField(blank=True, null=True)
    created_at = models.DateField(auto_now_add=True)

class GarmentGender(models.Model):
    
    MALE = 'M'
    FEMALE = 'F'
    ALL = 'A'

    GARMENT_GENDER_CHOICES = (
        (MALE, 'MALE'),
        (FEMALE, 'FEMALE'),
        (ALL, 'ALL'),
    )

    gender = models.CharField(max_length=1, choices=GARMENT_GENDER_CHOICES, default=ALL)

class GarmentFabric(models.Model):

    description = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255)
    created_at = models.DateField(auto_now_add=True)

class GarmentImage(models.Model):

    description = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255)
    created_at = models.DateField(auto_now_add=True)
    index = models.IntegerField(default=0)
    image = models.ImageField(blank=True, null=True)
    garment = models.ForeignKey('Garment', blank=True, null=True)

@receiver(post_save, sender=GarmentImage)
def create_user_profile(sender, instance, created, **kwargs):

    if created and instance.garment is not None:

        instance.index = GarmentImage.objects.filter(garment=instance.garment).count() + 1
