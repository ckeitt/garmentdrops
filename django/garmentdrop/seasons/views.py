# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from seasons.models import Season
from seasons.models import DropDate
from garments.models import Garment
from garments.models import GarmentType
from garments.models import BaseGarment

from seasons.serializers import SeasonSerializer
from seasons.serializers import DropDateSerializer
from garments.serializers import GarmentSerializer
from garments.serializers import GarmentTypeSerializer

from rest_framework import authentication, permissions
from rest_framework import generics

class ListSeasons(generics.ListAPIView):
    """
    View to list all seasons in the system.

    * Public availability to all users.
    """

    queryset = Season.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = SeasonSerializer

class RetrieveSeason(generics.RetrieveAPIView):
    """
    View a specific season in the system.

    * Public availability to all users.
    """

    queryset = Season.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = SeasonSerializer

class ListSeasonGarments(generics.ListAPIView):
    """
    View to list all garments of a specific season in the system.

    * Public availability to all users.
    """

    queryset = Garment.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = GarmentSerializer

    def filter_queryset(self, queryset):
        queryset = Garment.objects.filter(base_garment__drop_date__season__pk=self.kwargs['pk'])
        return queryset

class ListSeasonGarmentTypes(generics.ListAPIView):
    """
    View to list all garment types of a specific season in the system.

    * Public availability to all users.
    """

    queryset = GarmentType.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = GarmentTypeSerializer

    def filter_queryset(self, queryset):
        queryset_pk = BaseGarment.objects.filter(drop_date__season__pk=self.kwargs['pk']).values_list('type__pk', flat=True)
        queryset = GarmentType.objects.filter(pk__in=queryset_pk)
        return queryset
