import json
import requests

from django.shortcuts import render
from django.views import generic
from django.http import HttpResponse
from .models import Faqs
from datetime import datetime

# Create your views here.
def IndexView(request):
    return render(request, 'kiosk/index.html')

def FaqsView(request):
    return render(request, 'kiosk/faqs.html')

def EventsView(request):
	url = 'https://events.hackerdojo.com/events.json'
	resp = requests.get(url=url)
	data = resp.json()
	today = datetime.today()
	for event in data:
		event['start_time'] = datetime.strptime(event['start_time'], '%Y-%m-%dT%H:%M:%S')
		# if event['start_time'] < datetime.today():
		# 	print('this was yesterday',event)
		# 	data.remove(event)
		# else:
		event['end_time'] = datetime.strptime(event['end_time'], '%Y-%m-%dT%H:%M:%S')
		event['day'] = event['start_time'].strftime("%A, %B %d, %Y")
		event['start'] = event['start_time'].strftime("%I:%M %p")
		event['end'] = event['end_time'].strftime("%I:%M %p")
	# TODO don't show past events
	return render(request, 'kiosk/events.html',{'data':data,'today':today})

def BuildingMapView(request):
    return render(request, 'kiosk/building_map.html')

def MembershipView(request):
    return render(request, 'kiosk/membership.html')

def AboutUsView(request):
    return render(request, 'kiosk/about_us.html')

def MapView(request):
    return render(request, 'kiosk/map.html')




