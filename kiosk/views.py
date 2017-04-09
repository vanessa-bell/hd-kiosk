from django.shortcuts import render
from django.views import generic

# Create your views here.
class IndexView(generic.ListView):
	template_name = 'kiosk/index.html'
	def get_queryset(self):
		return 'FAQs (placeholder)'

class EventsView(generic.ListView):
	template_name = 'kiosk/events.html'
	def get_queryset(self):
		return 'events (placeholder)'