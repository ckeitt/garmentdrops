from django.conf.urls import url
from garments import views
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    url('garments/$', views.ListGarments.as_view()),
    url('garments/types/$', views.ListGarmentTypes.as_view()),
    url('garments/base/$', views.ListBaseGarments.as_view()),
]
