(function() {

  test('test_simple_plot', function() {
    var data_source, div, myrender, plotmodel;
    expect(0);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: -2
        }, {
          x: 2,
          y: -3
        }, {
          x: 3,
          y: -4
        }, {
          x: 4,
          y: -5
        }, {
          x: 5,
          y: -6
        }
      ]
    }, {
      'local': true
    });
    plotmodel = Bokeh.scatter_plot(null, data_source, 'x', 'y', null, 'circle');
    window.plot = plotmodel;
    div = $('<div/>');
    $('body').append(div);
    myrender = function() {
      var view;
      view = new Bokeh.PlotView({
        'model': plotmodel,
        'render_loop': true
      });
      div.append(view.$el);
      return view.render();
    };
    console.log('test_simple_plot');
    return _.defer(myrender);
  });

  test('test_line_plot', function() {
    var data_source, div, myrender, plotmodel;
    expect(0);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: -2
        }, {
          x: 2,
          y: -3
        }, {
          x: 3,
          y: -4
        }, {
          x: 4,
          y: -5
        }, {
          x: 5,
          y: -6
        }
      ]
    }, {
      'local': true
    });
    plotmodel = Bokeh.line_plot(null, data_source, 'x', 'y', null, 'circle');
    window.plot = plotmodel;
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    myrender = function() {
      var view;
      view = new Bokeh.PlotView({
        'model': plotmodel,
        'render_loop': true
      });
      div.append(view.$el);
      return view.render();
    };
    console.log('test_simple_plot');
    return _.defer(myrender);
  });

  test('test_updating_plot', function() {
    var data_source, div, myrender, plotmodel;
    expect(0);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: -2
        }, {
          x: 2,
          y: -3
        }, {
          x: 3,
          y: -4
        }, {
          x: 4,
          y: -5
        }, {
          x: 5,
          y: -6
        }
      ]
    }, {
      'local': true
    });
    plotmodel = Bokeh.scatter_plot(null, data_source, 'x', 'y', null, 'circle');
    plotmodel.set({
      'render_loop': true
    });
    window.plot = plotmodel;
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    myrender = function() {
      var view;
      view = new Bokeh.PlotView({
        'model': plotmodel,
        'render_loop': true
      });
      div.append(view.$el);
      view.render();
      return view.render();
    };
    console.log('test_updating_plot');
    return _.defer(myrender);
  });

  test('test_colors_plot', function() {
    var data_source, div, myrender, plotmodel;
    expect(0);
    data_source = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: [
        {
          x: 1,
          y: -2
        }, {
          x: 2,
          y: -3
        }, {
          x: 3,
          y: -4
        }, {
          x: 4,
          y: -5
        }, {
          x: 5,
          y: -6
        }
      ]
    }, {
      'local': true
    });
    plotmodel = Bokeh.scatter_plot(null, data_source, 'x', 'y', 'x', 'circle');
    plotmodel.set({
      'render_loop': true
    });
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    myrender = function() {
      var view;
      view = new Bokeh.PlotView({
        'model': plotmodel,
        'render_loop': true
      });
      div.append(view.$el);
      view.render();
      return plotmodel.set({
        'width': 300,
        'height': 300
      });
    };
    console.log("test_colors_plot");
    return _.defer(myrender);
  });

}).call(this);
