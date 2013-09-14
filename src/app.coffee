@FE ||= {}

@layOutDay = FE.build = (events) ->
  @FE.EventApp.Content.show(new FE.Views.Day(
    collection: new FE.Events(events)
  ))


@FE.EventApp = new Backbone.Marionette.Application()

@FE.EventApp.addRegions
  Content: '#content'

@FE.EventApp.addInitializer ->
  window.layOutDay([ {start: 30, end: 150}, {start: 540, end: 600}, {start: 560, end: 620}, {start: 610, end: 670}])

window.onload = ->
  @FE.EventApp.start()