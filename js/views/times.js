// Generated by CoffeeScript 1.6.3
(function() {
  var _base, _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  this.FE || (this.FE = {});

  (_base = this.FE).Views || (_base.Views = {});

  FE.Views.Times = (function(_super) {
    __extends(Times, _super);

    function Times() {
      _ref = Times.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    Times.prototype.className = 'times';

    Times.prototype.tagName = "ul";

    Times.prototype.template = function() {
      return "";
    };

    Times.prototype.render = function() {
      var i, start, _i, _ref1, _ref2, _results;
      start = (new moment).hour(9).minute(0);
      _results = [];
      for (i = _i = _ref1 = this.options.start, _ref2 = this.options.end; 0.5 > 0 ? _i <= _ref2 : _i >= _ref2; i = _i += 0.5) {
        this.$el.append("<li class='" + (i % 1 !== 0 ? "small" : "med") + "'><em class='time'>" + (start.format('h:mm')) + "</em><span class='small'>" + (start.format('A')) + "</span></li>");
        _results.push(start.add('h', 0.5));
      }
      return _results;
    };

    return Times;

  })(Marionette.ItemView);

}).call(this);
