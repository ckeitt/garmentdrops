# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from garments.models import Garment
from garments.models import Colorway
from garments.models import GarmentSize
from garments.models import GarmentGender
from garments.models import GarmentFabric

@admin.register(Garment)
class GarmentAdmin(admin.ModelAdmin):
    pass

@admin.register(Colorway)
class ColorwayAdmin(admin.ModelAdmin):
    pass

@admin.register(GarmentSize)
class GarmentSizeAdmin(admin.ModelAdmin):
    pass

@admin.register(GarmentGender)
class GarmentGenderAdmin(admin.ModelAdmin):
    pass

@admin.register(GarmentFabric)
class GarmentFabricAdmin(admin.ModelAdmin):
    pass
