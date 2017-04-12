from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.IndexView),
    url(r'^faqs/$', views.FaqsView, name='faqs'),
    url(r'^events/$', views.EventsView, name='events'),
    url(r'^building_map/$', views.BuildingMapView, name='building_map'),
    url(r'^pricing/$', views.PricingView, name='pricing'),
    url(r'^about_us/$', views.AboutUsView, name='about_us'),
]