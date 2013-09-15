@FE ||= {}

@layOutDay = FE.build = (events) ->
  @FE.EventApp.Content.show(new FE.Views.Day(
    collection: new FE.Events(events)
  ))

  # total hack.. just to not make the height fixed
  height = Math.max(_.max(events, (e) -> e.end).end/60, 12)
  @FE.EventApp.Times.show(new FE.Views.Times({start: 0, end: height+0.5}))
  $('.day').css('height', "#{(height+0.5)*60}px")

@FE.EventApp = new Backbone.Marionette.Application()

@FE.EventApp.addRegions
  Content: '#content'
  Times: '#times'

@FE.EventApp.addInitializer ->
  window.layOutDay([ {start: 30, end: 150}, {start: 540, end: 600}, {start: 560, end: 620}, {start: 610, end: 670}])

  window.layOutDay([
        {start: 1, end: 150}
        {start: 10, end: 190}
        {start: 100, end: 280}
        {start: 10, end: 250}
        {start: 10, end: 150}
        {start: 0, end: 200}
        {start: 230, end: 300}
        {start: 0, end: 900}
        {start: 560, end: 620}
        {start: 11, end: 200}
        {start: 901, end: 990}
    ])

window.onload = ->
  @FE.EventApp.start()