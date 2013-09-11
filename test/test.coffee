should          = require 'should'
global._        = require 'underscore'
global.Backbone = require 'backbone'
global.FE       = {}

Event           = require '../js/models/event.js'
Events          = require '../js/collections/events.js'

describe "overlaps", ->
  it "should find no overlaps", ->
    (new FE.Events([]).grouped().length).should.eql(0)

  it "should find two groups", ->
    (new FE.Events([
      {start: 30, end: 150},
      {start: 540, end: 600},
      {start: 560, end: 620},
      {start: 610, end: 670} ]
    ).grouped().length).should.eql(2)

  it "should find one group", ->
    (new FE.Events([
      {start: 30, end: 150},
      {start: 540, end: 600},
      {start: 560, end: 620},
      {start: 120, end: 670} ]
    ).grouped().length).should.eql(1)

  it "should find two groups", ->
    (new FE.Events([
      {start: 10, end: 30},
      {start: 11, end: 31},
      {start: 5, end: 9},
      {start: 10, end: 20} ]
    ).grouped().length).should.eql(2)

  it "should find one group", ->
    (new FE.Events([
      {start: 1, end: 10},
      {start: 20, end: 30},
      {start: 40, end: 50},
      {start: 0, end: 100} ]
    ).grouped().length).should.eql(1)

  it "should find four group", ->
    (new FE.Events([
      {start: 1, end: 2},
      {start: 3, end: 4},
      {start: -1, end: 0},
      {start: 10, end: 20} ]
    ).grouped().length).should.eql(4)
