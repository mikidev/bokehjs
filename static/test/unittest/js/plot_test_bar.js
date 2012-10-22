(function() {

  test('test_vbar', function() {
    var barrenderer, data_source, div, pantool, plot1, zoomtool;
    expect(0);
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: 2,
          cfield: 'a'
        }, {
          x: 2,
          y: 3,
          cfield: 'b'
        }, {
          x: 3,
          y: 4,
          cfield: 'c'
        }, {
          x: 4,
          y: 5,
          cfield: 'd'
        }, {
          x: 5,
          y: 6,
          cfield: 'e'
        }
      ]
    }, {
      'local': true
    });
    plot1 = Bokeh.bar_plot(null, data_source, 'x', 'y', 'vertical');
    plot1.set('offset', [100, 100]);
    barrenderer = plot1.resolve_ref(plot1.get('renderers')[0]);
    pantool = Bokeh.Collections['PanTool'].create({
      'xmappers': [barrenderer.get('xmapper')],
      'ymappers': [barrenderer.get('ymapper')]
    }, {
      'local': true
    });
    zoomtool = Bokeh.Collections['ZoomTool'].create({
      'xmappers': [barrenderer.get('xmapper')],
      'ymappers': [barrenderer.get('ymapper')]
    }, {
      'local': true
    });
    plot1.set('tools', [pantool.ref(), zoomtool.ref()]);
    window.plot1 = plot1;
    window.myrender = function() {
      var view;
      view = new plot1.default_view({
        'model': plot1,
        'render_loop': true
      });
      div.append(view.$el);
      view.render();
      return window.view = view;
    };
    return _.defer(window.myrender);
  });

  test('test_hbar', function() {
    var barrenderer, data_source, div, pantool, plot1, zoomtool;
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    expect(0);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: 2,
          cfield: 'a'
        }, {
          x: 2,
          y: 3,
          cfield: 'b'
        }, {
          x: 3,
          y: 4,
          cfield: 'c'
        }, {
          x: 4,
          y: 5,
          cfield: 'd'
        }, {
          x: 5,
          y: 6,
          cfield: 'e'
        }
      ]
    }, {
      'local': true
    });
    plot1 = Bokeh.bar_plot(null, data_source, 'x', 'y', 'horizontal');
    plot1.set('offset', [100, 100]);
    barrenderer = plot1.resolve_ref(plot1.get('renderers')[0]);
    pantool = Bokeh.Collections['PanTool'].create({
      'xmappers': [barrenderer.get('xmapper')],
      'ymappers': [barrenderer.get('ymapper')]
    }, {
      'local': true
    });
    zoomtool = Bokeh.Collections['ZoomTool'].create({
      'xmappers': [barrenderer.get('xmapper')],
      'ymappers': [barrenderer.get('ymapper')]
    }, {
      'local': true
    });
    plot1.set('tools', [pantool.ref(), zoomtool.ref()]);
    window.plot1 = plot1;
    window.myrender = function() {
      var view;
      view = new plot1.default_view({
        'model': plot1,
        'render_loop': true
      });
      div.append(view.$el);
      view.render();
      return window.view = view;
    };
    return _.defer(window.myrender);
  });

}).call(this);
