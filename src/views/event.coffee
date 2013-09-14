@FE ||= {}
@FE.Views ||= {}

class FE.Views.Event extends Backbone.Marionette.ItemView
  className: 'event'
  template: _.template("<h5 class='event-title'>Sample Item</h5><p class='event-location'>Sample Location</p>")