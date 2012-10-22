(function() {

  $(function() {
    var addPolygon, colors, height, width;
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple'];
    width = $('#container').width();
    height = $('#container').height();
    addPolygon = function(layer) {
      var n;
      n = layer.getChildren().length + 1;
      console.log("x", (n % 10 + 1) * 50, "y", (n % 3 + 1) * 50);
      return layer.add(new Kinetic.RegularPolygon({
        fill: 'red',
        sides: 3,
        x: (n % 10 + 1) * 50,
        y: (n % 3 + 1) * 50,
        radius: 40,
        strokeWidth: 3
      }));
    };
    return $(function() {
      var layer, stage;
      stage = new Kinetic.Stage({
        container: 'container',
        width: width,
        height: height
      });
      layer = new Kinetic.Layer();
      stage.add(layer);
      return $('#tango').click(function() {
        addPolygon(layer);
        return layer.draw();
      });
    });
  });

}).call(this);
