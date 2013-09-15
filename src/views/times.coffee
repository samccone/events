@FE ||= {}
@FE.Views ||= {}

class FE.Views.Times extends Marionette.ItemView
  className: 'times'
  tagName:"ul"
  template: -> ""

  render: ->
    start = (new moment).hour(9).minute(0)

    for i in [@options.start..@options.end] by 0.5
      @$el.append("<li class='#{if i%1 isnt 0 then "small" else "med"}'><em class='time'>#{start.format('h:mm')}</em><span class='small'>#{start.format('A')}</span></li>")
      start.add('h', 0.5)
