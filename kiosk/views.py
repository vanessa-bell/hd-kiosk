import json
import requests
import itertools

from django.shortcuts import render
from django.views import generic
from django.http import HttpResponse
from .models import Faq, Statistic
from datetime import datetime, timedelta
from operator import itemgetter


# Create your views here.
def IndexView(request):

    return render(request, 'kiosk/index.html')


def FaqsView(request):
    faqs = Faq.objects.all()
    print(faqs)
    statistics = Statistic.objects.all()
    print(statistics)
    now = datetime.now()
    print("***************")
    print(now)
    print("***************")
    return render(request, 'kiosk/faqs.html', {'faqs': faqs, 'statistics': statistics, 'current_time': now})


def EventsView(request):
    url = 'https://events.hackerdojo.com/events.json'
    resp = requests.get(url=url)
    data = resp.json()
    yesterday = datetime.strftime(datetime.now() - timedelta(1), "%A, %B %d, %Y")
    today = datetime.strftime(datetime.now(), "%A, %B %d, %Y")
    for event in data:
        event['start_time'] = datetime.strptime(event['start_time'], '%Y-%m-%dT%H:%M:%S')
        event['end_time'] = datetime.strptime(event['end_time'], '%Y-%m-%dT%H:%M:%S')
        event['day'] = event['start_time'].strftime("%A, %B %d, %Y")
        event['start'] = event['start_time'].strftime("%I:%M %p")
        event['end'] = event['end_time'].strftime("%I:%M %p")

    return render(request, 'kiosk/events.html', {'data': data, 'yesterday': yesterday, 'today': today})


def BuildingMapView(request):
    return render(request, 'kiosk/building_map.html')


def MembershipView(request):
    return render(request, 'kiosk/membership.html')


def AboutUsView(request):
    return render(request, 'kiosk/about_us.html')


def MapView(request):
    return render(request, 'kiosk/map.html')
