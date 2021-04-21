# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as bigbluebutton with context %}

bigbluebutton-package-install-pkg-installed:
  pkg.installed:
    - name: {{ bigbluebutton.pkg.name }}
