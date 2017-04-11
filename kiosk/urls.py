from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.IndexView),

    url(r'^faqs/$', views.FaqsView),
    url(r'^events/$', views.EventsView),
    url(r'^building_map/$', views.BuildingMapView),
    url(r'^pricing/$', views.PricingView),
    url(r'^about_us/$', views.AboutUsView),
]