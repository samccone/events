// Generated by CoffeeScript 1.6.3
(function() {
  var _base, _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  this.FE || (this.FE = {});

  (_base = this.FE).Views || (_base.Views = {});

  FE.Views.Event = (function(_super) {
    __extends(Event, _super);

    function Event() {
      _ref = Event.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Event.prototype.className = 'event';

    Event.prototype.template = _.template("<div class='flag'></div><div class='copy'><h5 class='event-title'>Sample Item</h5><p class='small'>Sample Location</p></div>");

    return Event;

  })(Backbone.Marionette.ItemView);

}).call(this);
