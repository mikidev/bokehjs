(function() {
  var auto_interval, calc_bound, tick_intervals;

  calc_bound = window.calc_bound;

  tick_intervals = window.tick_intervals;

  auto_interval = window.auto_interval;

  test('test_calc_bound', function() {
    expect(4);
    equal(calc_bound(3.0, 2, true), 4);
    equal(calc_bound(3.0, 2, false), 2);
    equal(calc_bound(4.0, 2, true), 4);
    return equal(calc_bound(4.0, 2, false), 4);
  });

  test('test_tick_intervals', function() {
    expect(3);
    equal(tick_intervals(0.0, 100.0, 13), 10);
    equal(tick_intervals(0.0, 120.0, 3), 50);
    return equal(tick_intervals(0.0, 100.0, 5), 25);
  });

  test('auto_interval', function() {
    equal(auto_interval(0.0, 100.0), 20);
    equal(auto_interval(0.0, 130.0), 25);
    return equal(auto_interval(30.0, 50.0), 2.5);
  });

  test('argsort', function() {
    var argsorted, argsorted2, expected, expected2, orig, orig2;
    orig = [-3, -2, -1];
    argsorted = argsort(orig);
    expected = [0, 1, 2];
    deepEqual(argsorted, expected);
    orig2 = [3, -2, -1];
    argsorted2 = argsort(orig2);
    expected2 = [1, 2, 0];
    deepEqual(argsorted2, expected2);
    return true;
  });

  test('_sorted', function() {
    var ab, bc;
    ab = [2, 4, 7];
    deepEqual(_.sorted(ab), [2, 4, 7]);
    ab = [2, 4, 7];
    bc = _.sorted(ab);
    bc[0] = 'a';
    deepEqual(ab, [2, 4, 7]);
    ab = [2, -4, 7];
    deepEqual([-4, 2, 7], _.sorted(ab));
    return null;
  });

}).call(this);
