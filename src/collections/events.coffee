@FE ||= {}

class FE.Events extends Backbone.Collection
  model: FE.Event

  comparator: (m) ->
    return m.get('start')

  eventsByRange: (m) ->
    @filter (_event) ->
      _event isnt m and _event.overlapsWith(m)

  groupFor: (model) ->
    groups = @grouped()
    index = 0
    _.forEach groups, (g, i) ->
      if ~g.indexOf(model)
        index = i
    groups[index]

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

    rangeReduce.map (r) => @eventsByRange(r)