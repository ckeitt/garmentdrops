# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2018-11-11 01:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('garments', '0006_auto_20181031_2358'),
    ]

    operations = [
        migrations.AddField(
            model_name='basegarment',
            name='active',
            field=models.BooleanField(default=True),
        ),
    ]
