@FE ||= {}
@FE.Views ||= {}

class FE.Views.Day extends Marionette.CollectionView
  className: 'day'
  itemView: FE.Views.Event