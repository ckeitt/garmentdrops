from rest_framework.serializers import ModelSerializer

from garments.models import BaseGarment
from garments.models import Garment
from garments.models import GarmentType
from garments.models import GarmentFabric
from garments.models import Colorway
from garments.models import GarmentSize
from garments.models import GarmentGender
from garments.models import GarmentImage
from seasons.serializers import DropDateSerializer

class GarmentTypeSerializer(ModelSerializer):
    class Meta:
        model = GarmentType
        fields = ('name', 'description',)

class GarmentFabricSerializer(ModelSerializer):
    class Meta:
        model = GarmentFabric
        fields = ('name', 'description',)

class ColorwaySerializer(ModelSerializer):
    class Meta:
        model = Colorway
        fields = ('name', 'description',)

class GarmentSizeSerializer(ModelSerializer):
    class Meta:
        model = GarmentSize
        fields = ('size', 'length', 'description',)

class GarmentGenderSerializer(ModelSerializer):
    class Meta:
        model = GarmentGender
        fields = ('gender',)

class BaseGarmentSerializer(ModelSerializer):

    type = GarmentTypeSerializer(many=False, read_only=True)
    fabric = GarmentFabricSerializer(many=False, read_only=True)
    drop_date = DropDateSerializer(many=False, read_only=True)

    class Meta:
        model = BaseGarment
        fields = ('description','name','type', 'fabric', 'drop_date')

class GarmentSerializer(ModelSerializer):

    base_garment = BaseGarmentSerializer(many=False, read_only=True)
    color = ColorwaySerializer(many=False, read_only=True)
    size = GarmentSizeSerializer(many=False, read_only=True)

    class Meta:
        model = Garment
        fields = ('uuid', 'base_garment', 'color', 'size', 'quantity', 'price',)
