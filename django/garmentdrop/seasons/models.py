# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

class Season(models.Model):
    
    created_at = models.DateField(auto_now_add=True)
    descrption = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)

class DropDate(models.Model):

    created_at = models.DateField(auto_now_add=True)
    release_date = models.DateField(blank=True)
    season = models.ForeignKey('Season', blank=True, null=True)
    
