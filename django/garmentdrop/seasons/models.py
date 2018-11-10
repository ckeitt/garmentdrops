# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

class Season(models.Model):
    
    created_at = models.DateField(auto_now_add=True)
    description = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=255, blank=True, null=True)

    def __unicode__(self):
        if (self.name is not None):
            return self.name

class DropDate(models.Model):

    created_at = models.DateField(auto_now_add=True)
    release_date = models.DateField(blank=True)
    season = models.ForeignKey('Season', blank=True, null=True)
    
    def __unicode__(self):
        if (self.season.name is not None and self.release_date is not None):
            return '%s - release: %s' % (self.season.name, self.release_date)
