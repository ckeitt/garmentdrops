# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from garments.models import Garment
from garments.serializers import GarmentSerializer
from rest_framework import authentication, permissions
from rest_framework import generics

class ListGarments(generics.ListAPIView):
    """
    View to list all garments in the system.

    * Public availability to all users.
    """

    queryset = Garment.objects.all()
    permission_classes = (permissions.AllowAny,)
    serializer_class = GarmentSerializer
        
