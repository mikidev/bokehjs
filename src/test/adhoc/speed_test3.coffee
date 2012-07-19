test('scatterfast',  () ->
  expect(0)
  maxval = 1560 * 3
  x = _.range(maxval)
  y = _.range(maxval)
  data = ({'x' : temp[0], 'y' : temp[1]} for temp in _.zip(x, y))
  window.data = data
  $('body').append("<div><svg id='chart'></svg></div>")
  starter = d3.select('#chart').attr('width', 800).attr('height', 300)
  node1 = starter.append('g')
  render = (x1, x2, y1, y2) ->
    scale1 = d3.scale.linear().domain([0, maxval]).range([x1, x2])
    scale2 = d3.scale.linear().domain([0, maxval]).range([y2, y1])

    get_marks = (node) ->
      node = node.selectAll('circle').data(data)
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
    a = new Date()
    bigstart = a
    calc_buffer()
    b = new Date()
    #console.log('calc', b - a)
    for node in [node1]
      a = new Date()
      marks = get_marks(node)
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
  button = $('<input type=button></input>')
  $('body').append(button)
  numcircles = $('<p></p>')
  $('body').append(numcircles)
  togglestate = true
  button.click(() ->
    if togglestate
      render(0, 300, 0, 300)
      togglestate = false
    else
      render(100, 400, 100, 400)
      togglestate = true
    numcircles.html("numcircles" + $('circle').length)
  )
)
