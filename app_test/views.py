from django.shortcuts import render_to_response
from django.template import Context, Template, loader
from django.db import settings

def appserver(request, template_file="appserver.html"):
    c = Context({'result': 'succeded',})
    return render_to_response(template_file, c)
    
def base(request, template_file="base.html"):

    return render_to_response(template_file)

def serverid(request, template_file="serverid.html"):
    c = Context({'ip_address': request.META['REMOTE_ADDR']})
    t = Context({'hostname': 'andy',})
    return render_to_response(template_file, c, t)


