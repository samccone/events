@FE ||= {}
@FE.Views ||= {}

class FE.Views.Event extends Backbone.Marionette.ItemView
  className: 'event'
  template: _.template("<div class='flag'></div><div class='copy'><h5 class='event-title'>Sample Item</h5><p class='small'>Sample Location</p></div>")