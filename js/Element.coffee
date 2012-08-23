class Element3D

  constructor: (@el, camera) ->
    @needsUpdate = yes
    @localPos = new Vector3D()
    @rot = new Vector3D()
    @vel = new Vector3D()
    @angularVel = new Vector3D(.3,.2,.7)
    @scale = new Vector3D(1,1,1)
    
  update: =>
    @localPos = @localPos.add @vel
    @rot = @rot.add @angularVel
    @el.style['-webkit-transform'] = "translateX(#{@localPos.x}) translateY(#{@localPos.y}) translateZ(#{@localPos.z}) rotateX(#{@rot.x}deg) rotateY(#{@rot.y}deg) rotateZ(#{@rot.z}deg)"
    if @angularVel.length() is 0 and @vel.length() is 0 then @needsUpdate = no 


  rotateX: (deg) =>
    @rot.setX(deg)
    @needsUpdate = yes

  rotateY: (deg) =>
    @rot.setY(deg)
    @needsUpdate = yes

  rotateZ: (deg) =>
    @rot.setZ(deg)
    @needsUpdate = yes

  translateX: (amt) =>
    @localPos.setX(amt)
    @needsUpdate = yes

  translateY: (amt) =>
    @localPos.setY(amt)
    @needsUpdate = yes

  translateZ: (amt) =>
    @localPos.setZ(amt)
    @needsUpdate = yes
