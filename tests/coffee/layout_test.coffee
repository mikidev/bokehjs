base = require("./base")
hbox = require("./layout/hbox")
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
  view = new hbox.HBoxView(
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
  view = new hbox.VBoxView(
    elements : [first, second, third]
    height : 300
    width : 100
  )
  $('body').append(view.el)
)