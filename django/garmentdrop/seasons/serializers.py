from rest_framework.serializers import ModelSerializer

from seasons.models import Season
from seasons.models import DropDate

class SeasonSerializer(ModelSerializer):
    class Meta:
        model = Season
        fields = ('id', 'name', 'description',)

class DropDateSerializer(ModelSerializer):

    season = SeasonSerializer(many=False, read_only=True)

    class Meta:
        model = DropDate
        fields = ('release_date', 'season',)
