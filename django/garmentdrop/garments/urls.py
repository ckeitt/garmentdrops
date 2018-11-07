from django.conf.urls import url
from garments import views

urlpatterns = [
    url('garments/', views.ListGarments.as_view()),
]
