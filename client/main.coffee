items = @Items

color_red_and_green = {color: {$in:['red', 'green']}}
color_red = {color: 'red'}

Template.hello.helpers
  reds_and_greens: -> items.find(color_red_and_green)

Template.hello.events
  'click .red': (e,t)->items.insert(color_red)
