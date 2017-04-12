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
	url = 'https://events.hackerdojo.com/events.json'
	resp = requests.get(url=url)
	data = resp.json()
	# TODO change dates from strings to dates
	# TODO don't show past events
	return render(request, 'kiosk/events.html',{'data':data})

def BuildingMapView(request):
    return render(request, 'kiosk/building_map.html')

def PricingView(request):
    return render(request, 'kiosk/pricing.html')

def AboutUsView(request):
    return render(request, 'kiosk/about_us.html')




