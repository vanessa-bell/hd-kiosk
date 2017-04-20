from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.IndexView),
    url(r'^faqs/$', views.FaqsView, name='faqs'),
    url(r'^events/$', views.EventsView, name='events'),
    url(r'^building_map/$', views.BuildingMapView, name='building_map'),
    url(r'^membership/$', views.MembershipView, name='membership'),
    url(r'^about_us/$', views.AboutUsView, name='about_us'),
    url(r'^map/$', views.MapView, name='map'),
]