# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2018-10-31 23:12
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('garments', '0002_garmentimage'),
    ]

    operations = [
        migrations.AlterField(
            model_name='garment',
            name='color',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='garments.Colorway'),
        ),
        migrations.AlterField(
            model_name='garment',
            name='drop_date',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='seasons.DropDate'),
        ),
        migrations.AlterField(
            model_name='garment',
            name='fabric',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='garments.GarmentFabric'),
        ),
        migrations.AlterField(
            model_name='garment',
            name='type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='garments.GarmentType'),
        ),
    ]
