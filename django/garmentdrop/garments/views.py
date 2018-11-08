# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from garments.models import Garment
from garments.models import GarmentType
from garments.models import BaseGarment

from garments.serializers import GarmentSerializer
from garments.serializers import GarmentTypeSerializer
from garments.serializers import BaseGarmentSerializer

from rest_framework import authentication, permissions
from rest_framework import generics

class ListBaseGarments(generics.ListAPIView):
    """
    View to list all base garment elements in the system.

    * Public availability to all users.
    """

    queryset = BaseGarment.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = BaseGarmentSerializer

class ListGarments(generics.ListAPIView):
    """
    View to list all garments in the system.

    * Public availability to all users.
    """

    queryset = Garment.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = GarmentSerializer

class ListGarmentTypes(generics.ListAPIView):
    """
    View to list all garments in the system.

    * Public availability to all users.
    """

    queryset = GarmentType.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = GarmentTypeSerializer
