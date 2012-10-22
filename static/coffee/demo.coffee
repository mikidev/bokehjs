
$(->
  data_source = Bokeh.Collections['ObjectArrayDataSource'].create(
    {data : [{x : 1, y : -2},
    {x : 2, y : -3},
    {x : 3, y : -4},
    {x : 4, y : -5},
    {x : 5, y : -6}]}, {'local' : true});
  plotmodel = Bokeh.scatter_plot(null, data_source, 'x', 'y', null, 'circle');
  window.plot = plotmodel
  div = $('<div/>')
  $('#plot1').append(div)
  myrender  =  ->
    view = new Bokeh.PlotView('model' : plotmodel, 'render_loop' : true)
    ab = $('#plot1')
    view.render()
    ab.append(view.$el)
    console.log('test_simple_plot')
  _.defer(myrender)  
);

$(->
  $("ul.preview_carousel li .plot_holder").click((e) ->
    


    ")

  );
