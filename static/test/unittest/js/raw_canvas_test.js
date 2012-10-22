(function() {
  var canvas_t, data_set, kinetic_t, kinetic_t2, make_range, side_length;

  side_length = 200;

  make_range = function(num_points) {
    var data, pt, step;
    step = side_length / num_points;
    data = (function() {
      var _i, _len, _ref, _results;
      _ref = _.range(0, side_length, step);
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
    return data;
  };

  data_set = make_range(100000);

  canvas_t = function() {
    var can1, ctx, ed, point, pt, st, _i, _len;
    expect(0);
    can1 = $('canvas#can1')[0];
    $(can1).attr('height', side_length.toString());
    $(can1).attr('width', side_length.toString());
    ctx = can1.getContext('2d');
    st = new Date();
    point = function(pt) {
      return ctx.fillRect(pt.x, pt.y, 5, 5);
    };
    for (_i = 0, _len = data_set.length; _i < _len; _i++) {
      pt = data_set[_i];
      point(pt);
    }
    ctx.stroke();
    ed = new Date();
    return console.log('canvas', ed - st);
  };

  kinetic_t = function() {
    var layer, pt, stage, _i, _len;
    expect(0);
    stage = new Kinetic.Stage({
      container: $('#container')[0],
      width: 200,
      height: 200
    });
    layer = new Kinetic.Layer();
    for (_i = 0, _len = data_set.length; _i < _len; _i++) {
      pt = data_set[_i];
      layer.add(new Kinetic.RegularPolygon({
        fill: 'red',
        sides: 4,
        x: pt.x,
        y: pt.y,
        radius: 5,
        strokeWidth: 3
      }));
    }
    return stage.add(layer);
  };

  kinetic_t2 = function() {
    var layer, pt, pts, stage, _i, _len;
    expect(0);
    stage = new Kinetic.Stage({
      container: $('#container2')[0],
      width: 200,
      height: 200
    });
    layer = new Kinetic.Layer();
    pts = [];
    for (_i = 0, _len = data_set.length; _i < _len; _i++) {
      pt = data_set[_i];
      pt = new Kinetic.RegularPolygon({
        fill: 'red',
        sides: 4,
        x: pt.x,
        y: pt.y,
        radius: 5,
        strokeWidth: 3
      });
      pts.push(pt);
      layer.add(pt);
    }
    window.pts = pts;
    stage.add(layer);
    window.doMove = function() {
      var ed, pos, pt, st, st2, _j, _len2;
      st = new Date();
      for (_j = 0, _len2 = pts.length; _j < _len2; _j++) {
        pt = pts[_j];
        pos = pt.getPosition();
        pt.setPosition(pos.x + 30, pos.y);
      }
      "";
      st2 = new Date();
      ed = new Date();
      return console.log('total', ed - st, 'adding', st2 - st, 'drawing', ed - st2);
    };
    return $(document).keypress(function() {
      var ed, st;
      st = new Date();
      doMove();
      return ed = new Date();
    });
  };

  window.canvas_t = canvas_t;

  window.kinetic_t = kinetic_t;

  test('test_raw_canvas', canvas_t);

  test('test_raw_kinetic', kinetic_t);

  test('test_raw_kinetic2', kinetic_t2);

}).call(this);
