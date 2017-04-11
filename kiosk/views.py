from django.shortcuts import render
from django.views import generic
from .models import Faqs


# Create your views here.
def IndexView(request):
    return render(request, 'kiosk/index.html')

def FaqsView(request):
    return render(request, 'kiosk/faqs.html')

def EventsView(request):
    return render(request, 'kiosk/events.html')

def BuildingMapView(request):
    return render(request, 'kiosk/building_map.html')

def PricingView(request):
    return render(request, 'kiosk/pricing.html')

def AboutUsView(request):
    return render(request, 'kiosk/about_us.html')

# class IndexView(generic.ListView):
#     template_name = 'kiosk/index.html'
#
#     def get_queryset(self):
#         return 'Index (placeholder)'
#
#
# class FaqsView(generic.ListView):
#     template_name = 'kiosk/faqs.html'
#
#     def get_queryset(self):
#         return 'FAQs (placeholder)'
#
# class EventsView(generic.ListView):
#     template_name = 'kiosk/events.html'
#
#     def get_queryset(self):
#         return 'Events (placeholder)'
#
# class BuildingMapView(generic.ListView):
#     template_name = 'kiosk/building_map.html'
#
#     def get_queryset(self):
#         return 'Building Map (placeholder)'
#
# class PricingView(generic.ListView):
#     template_name = 'kiosk/pricing.html'
#
#     def get_queryset(self):
#         return 'Pricing (placeholder)'
#
# class AboutUsView(generic.ListView):
#     template_name = 'kiosk/about_us.html'
#
#     def get_queryset(self):
#         return 'About us (placeholder)'