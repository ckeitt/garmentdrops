from django.conf.urls import url
from garments import views

urlpatterns = [
    url(r'^garments/types/$', views.ListGarmentTypes.as_view()),
    url(r'^garments/base/$', views.ListBaseGarments.as_view()),
    url(r'^garments/types/(?P<pk>.+)/$', views.ListSpecificGarmentTypes.as_view()),
    url(r'^garments/(?P<uuid>.+)/$', views.RetrieveGarment.as_view()),
    url(r'^garments/', views.ListGarments.as_view()),
]

