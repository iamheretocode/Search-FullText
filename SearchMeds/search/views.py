from django.contrib.postgres import search
from django.db.models import query
from django.db.models.query_utils import Q
from django.shortcuts import render

# Create your views here.
from django.shortcuts import render, HttpResponse
from .models import Medicine
from django.views.generic import TemplateView
from django.http import HttpResponse
from django.contrib.postgres.search import SearchQuery, SearchVector
        
# Create your views here.
class HomePage(TemplateView):
    template_name = 'homepage.html'

class DetailsPage(TemplateView):
    template_name = 'contact.html'


def search_med(request):
    if 'q' in request.GET:
        q = request.GET['q']
        vector = SearchVector('name')
        query = SearchQuery(q)
        all_meds = Medicine.objects.annotate(search=vector).filter(search=query)
    else:
        all_meds = None

    dict_meds = {'all_meds' : all_meds}

    return render(request, 'search/result.html',dict_meds )