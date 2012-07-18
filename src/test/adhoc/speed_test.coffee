test('linetest',  () ->
  expect(0)
  maxval = 6000
  x = _.range(maxval)
  y = _.range(maxval)
  data = ({'x' : temp[0], 'y' : temp[1]} for temp in _.zip(x, y))
  window.data = data
  scale1 = d3.scale.linear().domain([0, maxval]).range([0, 300])
  scale2 = d3.scale.linear().domain([0, maxval]).range([300, 0])
  $('body').append("<div><svg id='chart'></svg></div>")
  d3.select('#chart').attr('width', 300).attr('height', 300)
  a = new Date()
  for c in _.range(1)
    console.log('drawing line')
    line = d3.svg.line().x((d) ->
      return scale1(d['x'])
    ).y((d) ->
      return scale2(d['y'])
    )
    path = d3.select('#chart').selectAll('path').data([data])
      .attr('d', line)
    path = d3.select('#chart').selectAll('path').data([data])
    path.attr('d', line)
    path.attr('stroke', '#000').attr('fill', 'none')

    path = path.enter().append('path')
    path.attr('d', line)
    path.attr('stroke', '#000').attr('fill', 'none')
  b = new Date()
  console.log(b - a)
)
test('matter',  () ->
  expect(0)
  maxval = 1560
  x = _.range(maxval)
  y = _.range(maxval)
  data = ({'x' : temp[0], 'y' : temp[1]} for temp in _.zip(x, y))
  window.data = data
  scale1 = d3.scale.linear().domain([0, maxval]).range([0, 300])
  scale2 = d3.scale.linear().domain([0, maxval]).range([300, 0])
  $('body').append("<div><svg id='chart'></svg></div>")
  calc_buffer = () ->
    datax = (x['x'] for x in data)
    datay = (x['y'] for x in data)
    for dat, idx in datax
      datax[idx] = scale1(dat)
    for dat, idx in datay
      datay[idx] = scale2(dat)
    window.screenx=datax
    window.screeny=datay

  window.render = () ->
    a = new Date()
    calc_buffer()
    datax = (x['x'] for x in data)
    datay = (x['y'] for x in data)
    d3.select('#chart').attr('width', 300).attr('height', 300)
    node = d3.select('#chart').selectAll('circle').data(data)
    node .attr('cx', ((d, i) -> window.screenx[i]))
        .attr('cy', ((d, i) -> window.screeny[i]))
        .attr('r', 5)
        .attr('fill', '#000')
    node = node.enter().append('circle')
    node .attr('cx', ((d, i) -> window.screenx[i]))
        .attr('cy', ((d, i) -> window.screeny[i]))
        .attr('r', 5)
        .attr('fill', '#000')
    b = new Date()
    #console.log(b - a)
    return b - a
  window.render2=render
  _.delay(()->
      val = 0
      for c in _.range(100)
        val += window.render2()
      console.log(val / 100)
      $('body').append(val / 100)
    , 1000)
)
