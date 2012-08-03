from django.shortcuts import render_to_response
from django.template import Context, Template, loader
from django.db import settings
import socket

def appserver(request, template_file="appserver.html"):
    c = Context({'result': 'succeded',})
    return render_to_response(template_file, c)
    
def base(request, template_file="base.html"):

    return render_to_response(template_file)

def serverid(request, template_file="serverid.html",  host_name = socket.gethostname()):
    c = Context({'ip_address': request.META['SERVER_ADDR']})
    t = Context({'hostname': host_name})
    return render_to_response(template_file, c, t)


