# -*- coding: utf-8 -*-
from __future__ import unicode_literals

import uuid
from django.db import models

class Garment(models.Model):
    
    uuid = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(blank=True, null=True)
    descrption = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)
    color = models.ForeignKey('Colorway', on_delete=models.CASCADE)
    type = models.ForeignKey('GarmentType', on_delete=models.CASCADE)

    quantity = models.IntegerField(default=0)
    price = models.DecimalField(max_length=6, decimal_places=2, blank=True, null=True)

class Colorway(models.Model):

    name = models.CharField(max_length=255)
    description = models.TextFIeld(blank=True, null=True)    
    created_at = models.DateField(auto_now_add=True)

class GarmentType(models.Model):

    description = models.TextFIeld(blank=True, null=True)
    name = models.CharField(max_length=255)
    created_at = models.DateField(auto_now_add=True)

class GarmentSize(models.Model):
    
    description = models.TextFIeld(blank=True, null=True)
    name = models.CharField(max_length=255)
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
