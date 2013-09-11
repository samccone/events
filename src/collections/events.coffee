@FE ||= {}

class FE.Events extends Backbone.Collection
  model: FE.Event

  eventsByRange: (range) ->
    _fauxEvent = new FE.Event(range)
    @filter (_event) -> _event.overlapsWith(_fauxEvent)

  eventRanges: ->
    groups = new FE.Events
    @each (_event) ->
      if groups.length
        inGroup = false
        groups.each (group) ->
          if group.overlapsWith(_event)
            group.extendToInclude(_event)
            inGroup = true

        unless inGroup then groups.add(new FE.Event(_event.attributes))
      else
        groups.add(new FE.Event(_event.attributes))

    groups

  grouped: ->
    rangeReduce     = @eventRanges()
    initalRanges    = rangeReduce.length

    for i in [0...initalRanges]
      rangeReduce = rangeReduce.eventRanges()

    rangeReduce.map (r) => @eventsByRange(r.attributes)
