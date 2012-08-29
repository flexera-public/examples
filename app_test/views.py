from django.shortcuts import render_to_response
from django.template import Context, Template, loader
from django.db import settings
import socket

def base(request, template_file="base.html"):
  return render_to_response(template_file)

def appserver(request, template_file="appserver.html"):
  c = Context({'result': 'succeeded',})
  return render_to_response(template_file, c)

def serverid(request, template_file="serverid.html",  host_name = socket.gethostname()):
  c = Context({'ip_address': request.META['SERVER_ADDR']})
  t = Context({'hostname': host_name})
  return render_to_response(template_file, c, t)

def dbread(request, template_file="dbread.html"):
  from django.db import connection, transaction
  cursor = connection.cursor()
  cursor.execute('SELECT * FROM app_test')
  rows = cursor.fetchall()
  t = Context({'results': rows})
  return render_to_response(template_file, t)
