import json
import requests

from django.shortcuts import render
from django.views import generic
from django.http import HttpResponse
from .models import Faqs


# Create your views here.
def IndexView(request):
    return render(request, 'kiosk/index.html')

def FaqsView(request):
    return render(request, 'kiosk/faqs.html')

def EventsView(request):
    return render(request, 'kiosk/events.html')

# class EventsView(generic.ListView):
# 	template_name = 'kiosk/events.html'
# 	def get_queryset(self):
# 		url = 'https://events.hackerdojo.com/events.json'

# 		resp = requests.get(url=url)
# 		data = resp.json()
# 		print(data)
# 		return data

def BuildingMapView(request):
    return render(request, 'kiosk/building_map.html')

def PricingView(request):
    return render(request, 'kiosk/pricing.html')

def AboutUsView(request):
    return render(request, 'kiosk/about_us.html')




