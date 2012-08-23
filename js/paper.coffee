class Controller
  
  constructor: ->
    @objects = []
    @camera = new Camera

  registerElement: (element) =>
    el = new Element3D(element, new Camera)
    @objects.push el
    el

  registerElements: (elements...) =>
    for element in elements
      newElement = new Element3D(element, @camera)
      console.log newElement
      @objects.push newElement
    @objects
    
  render: =>
    @timer? clearTimeout @timer
    element.update() for element in @objects when element.needsUpdate
    @timer = setTimeout @render, 16
    @

  start: ->
    @render()
    
   
    
controller = new Controller


controller.start()


#article = controller.addElement($("article")[0]) 

$("#images img").on "click", (evt) ->
   controller.registerElement($(@)[0])
 