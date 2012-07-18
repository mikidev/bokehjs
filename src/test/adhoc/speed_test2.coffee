test('scatter',  () ->
  expect(0)
  maxval = 1560
  x = _.range(maxval)
  y = _.range(maxval)
  data = ({'x' : temp[0], 'y' : temp[1]} for temp in _.zip(x, y))
  window.data = data
  scale1 = d3.scale.linear().domain([0, maxval]).range([0, 300])
  scale2 = d3.scale.linear().domain([0, maxval]).range([300, 0])
  $('body').append("<div><svg id='chart'></svg></div>")
  get_marks = () ->
    node = d3.select('#chart').attr('width', 300).attr('height', 300)
      .selectAll('circle').data(data)
    return node

  get_new_marks = (marks) ->
    return marks.enter().append('circle')

  position_marks = (marks) ->
    marks.attr('cx', ((d, i) -> return window.screenx[i]))
      .attr('cy', ((d, i) -> return window.screeny[i]))

  style_marks = (marks) ->
    marks.attr('r', 5).attr('fill', '#000')

  calc_buffer = () ->
    datax = (x['x'] for x in data)
    datay = (x['y'] for x in data)
    for dat, idx in datax
      datax[idx] = scale1(dat)
    for dat, idx in datay
      datay[idx] = scale2(dat)
    window.screenx=datax
    window.screeny=datay

  render = () ->
    a = new Date()
    bigstart = a
    calc_buffer()
    b = new Date()
    #console.log('calc', b - a)

    a = new Date()
    marks = get_marks()
    b = new Date()
    #console.log('get', b - a)

    a = new Date()
    position_marks(marks)
    b = new Date()
    #console.log('position', b - a)

    a = new Date()
    style_marks(marks)
    b = new Date()
    #console.log('style', b - a)

    a = new Date()
    marks = get_new_marks(marks)
    b = new Date()
    #console.log('get', b - a)

    a = new Date()
    position_marks(marks)
    b = new Date()
    #console.log('position', b - a)

    a = new Date()
    style_marks(marks)
    b = new Date()
    #console.log('style', b - a)
    #console.log('total', b - bigstart)
    return b - bigstart

  window.render1 = render

  window.runit = ()->
        val = 0
        for c in _.range(100)
          val += window.render1()
        console.log(val / 100)
        $('body').append(val / 100)

  _.delay(window.runit
      , 1000)
)
