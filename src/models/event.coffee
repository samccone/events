@FE ||= {}

class FE.Event extends Backbone.Model
  overlapsWith: (m) ->
    @get('start') <= m.get('end') and @get('end') >= m.get('start')

  length: ->
    @get('end') - @get('start')

  extendToInclude: (m) ->
    @set('start', m.get('start')) if m.get('start') < @get('start')
    @set('end', m.get('end')) if m.get('end') > @get('end')