from django.conf.urls import url
from seasons import views

urlpatterns = [
    url(r'^seasons/(?P<pk>.+)/types/$', views.ListSeasonGarmentTypes.as_view()),
    url(r'^seasons/(?P<pk>.+)/garments/$', views.ListSeasonGarments.as_view()),
    url(r'^seasons/(?P<pk>.+)/', views.RetrieveSeason.as_view()),
    url(r'^seasons/', views.ListSeasons.as_view()),
]
