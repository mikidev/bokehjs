(function() {
  var MAX_SIZE;

  MAX_SIZE = 500;

  test('test_datatable', function() {
    var data, data_source1, div, plot1, pt, scatterrenderer;
    expect(0);
    data = (function() {
      var _i, _len, _ref, _results;
      _ref = _.range(MAX_SIZE);
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        pt = _ref[_i];
        _results.push({
          'x': pt,
          'y': pt
        });
      }
      return _results;
    })();
    data_source1 = Bokeh.Collections['ObjectArrayDataSource'].create({
      data: data
    }, {
      'local': true
    });
    plot1 = Bokeh.data_table(null, data_source1, 'x', 'y', 'x', 'circle');
    plot1.set('offset', [100, 100]);
    scatterrenderer = plot1.resolve_ref(plot1.get('renderers')[0]);
    window.plot1 = plot1;
    div = $('<div style="border:1px solid black"></div>');
    $('body').append(div);
    window.myrender = function() {
      var view;
      view = new plot1.default_view({
        model: plot1,
        render_loop: true
      });
      div.append(view.$el);
      view.render();
      plot1.set({
        'width': 300
      });
      plot1.set({
        'height': 300
      });
      return window.view = view;
    };
    return _.defer(window.myrender);
  });

}).call(this);
