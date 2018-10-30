# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from seasons.models import Season
from seasons.models import DropDate

@admin.register(Season)
class SeasonAdmin(admin.ModelAdmin):
    pass

@admin.register(DropDate)
class DropDateAdmin(admin.ModelAdmin):
    pass

