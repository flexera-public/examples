from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'app_test.views.base', name='base'),
    url(r'^index.html$', 'app_test.views.base', name='base'),
    url(r'^appserver', 'app_test.views.appserver', name='appserver'),
    url(r'^serverid', 'app_test.views.serverid', name='serverid'),
    url(r'^dbread', 'app_test.views.dbread', name='dbread'),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
)
