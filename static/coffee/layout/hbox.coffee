base = require("../base")
events = require("./events")
hboxtemplate = require("./hboxtemplate")
ContinuumView = base.ContinuumView

class HBoxView extends ContinuumView
  attributes :
    class : 'hbox'

  initialize : (options) ->
    super(options)
    if options.elements
      @height = options.height
      @width = options.width
      @elements = options.elements
      @sizes = (100 / @elements.length for el in @elements)
    @render()
    #state vars, call twice cause we record the old state
    @eventgenerator = new events.TwoPointEventGenerator()

  set_sizes : () ->
    for temp in _.zip(@$el.find('.hcomponent'), @sizes)
      [el, size] = temp
      $(el).css('width', String(size) + "%")
    return null

  render : () ->
    if @views
      _.map(@views, (view) -> view.$el.detach())
    @$el.html('')
    @$el.html(hboxtemplate({elements : @elements}))
    for temp in _.zip(@$('.hcontent'), @elements)
      [hcontent, node] = temp
      $(hcontent).append(node)
    if @height
      @$el.height(@height)
    if @width
      @$el.width(@width)
    @set_sizes()
    return @

  events :
    "mousedown .hseparator" :  'handle_click'

  delegateEvents : (events) ->
    super(events)
    @listenTo(@eventgenerator, 'dragmove', @mousemove)
    @listenTo(@eventgenerator, 'dragstop', @mouseup)

  handle_click : (e) =>
    @idx = $(e.currentTarget).attr('idx')
    @eventgenerator.mousedown(e)
    e.preventDefault()

  mousemove : (basepoint, last_coords, coords) =>
    diff = coords.pageX - last_coords.pageX
    console.log(diff, @$el.width())
    percentage_delta = (100 * diff / @$el.width())
    @sizes[@idx - 1] = @sizes[@idx - 1] + percentage_delta
    @sizes[@idx] = @sizes[@idx] - percentage_delta
    console.log(diff, percentage_delta, @sizes)
    @set_sizes()

  mouseup : (basepoint, lastcoords, coords) =>
    console.log('up', basepoint, lastcoords, coords)

exports.HBoxView = HBoxView