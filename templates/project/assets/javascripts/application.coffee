#= require vendor/modernizr.js
#
# dashing.js is located in the dashing framework
# It includes jquery & batman for you.
#= require dashing.js

#= require vendor/d3-3.2.8
#= require vendor/fastclick
#= require vendor/jquery.cookie
#= require vendor/jquery.knob
#= require vendor/rickshaw-1.4.3.min
#
#= require foundation
#= require_tree ../../widgets

console.log("Yeah! The dashboard has started!")

Dashing.on 'ready', ->
  Dashing.widget_margins ||= [5, 5]
  Dashing.widget_base_dimensions ||= [300, 360]
  Dashing.numColumns ||= 4

  contentWidth = (Dashing.widget_base_dimensions[0] + Dashing.widget_margins[0] * 2) * Dashing.numColumns

  Batman.setImmediate ->
    # instantiate layout here
    # this replaces Gridster
