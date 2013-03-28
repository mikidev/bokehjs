base = require("./base")
layout = require("./layout/index")
Collections = base.Collections

test('hbox', () ->
  expect(0)
  first = $('<div>div1</div>')
  second = $('<div>div2</div>')
  third = $('<div>div3</div>')
  for temp in _.zip([first, second, third], ['red', 'yellow', 'green'])
    [node, color] = temp
    node.css('background-color', color)
    node.css('height', '100%')
    node.css('width', '100%')
  view = new layout.HBoxView(
    elements : [first, second, third]
    height : 100
    width : 300
  )
  $('body').append(view.el)
)


test('vbox', () ->
  expect(0)
  first = $('<div>div1</div>')
  second = $('<div>div2</div>')
  third = $('<div>div3</div>')
  for temp in _.zip([first, second, third], ['red', 'yellow', 'green'])
    [node, color] = temp
    node.css('background-color', color)
    node.css('height', '100%')
    node.css('width', '100%')
  view = new layout.VBoxView(
    elements : [first, second, third]
    height : 300
    width : 100
  )
  $('body').append(view.el)
)

test('test_nested', () ->
  expect(0)
  views = []
  for c in [1,2]
    first = $('<div>div1</div>')
    second = $('<div>div2</div>')
    third = $('<div>div3</div>')
    for temp in _.zip([first, second, third], ['red', 'yellow', 'green'])
      [node, color] = temp
      node.css('background-color', color)
      node.css('height', '100%')
      node.css('width', '100%')
    view = new layout.HBoxView(
      elements : [first, second, third]
      width : 300
      height : '100%'
    )
    views.push(view)
  view = new layout.VBoxView(
    elements : [views[0].el, views[1].el]
    width : 300
    height : 300
  )
  $('body').append(view.el)
)