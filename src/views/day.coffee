@FE ||= {}
@FE.Views ||= {}

class FE.Views.Day extends Marionette.CollectionView
  className: 'day'

  appendHtml: (collectionView, itemView, index) ->
    overlaps =
      Math.max(1, collectionView.collection.groupFor(itemView.model).length - 1)

    width = 100/overlaps
    left  = index % overlaps * width

    itemView.$el.css
      'top': itemView.model.get('start')+"px"
      'left': left + "%"
      'height': itemView.model.length()+"px"
      'width': width+"%"

    @$el.append itemView.el

  itemView: FE.Views.Event