class Vector3D
  constructor:(@x=0,@y=0,@z=0) -> @
# set:(coords...)->
#   [@x, @y, @z] = coords 
#   @
  set:(x,y,z)->
    @x = x
    @y = y
    @z = z
    @
  setX:(x)->
    @x = x
    @
  setY:(y)->
    @y=y
    @
  setZ:(z)->
    @z=z
    @
# get:->[@x, @y, @z]
  add:(v)->
    @x += v.x
    @y += v.y
    @z += v.z
    @
  addScalar:(s)->
    @x += s
    @y += s
    @z += s
    @
  sub:(v)->
    @x -= v.x
    @y -= v.y
    @z -= v.z
    @
  subScalar:(s)->
    @x -= s
    @y -= s
    @z -= s
    @
  multiply:(v)->
    @x *= v.x
    @y *= v.y
    @z *= v.z
    @
  multiplyScalar:(s)->
    @x *= s
    @y *= s
    @z *= s
    @
  divide:(v)->
    @x /= v.x
    @y /= v.y
    @z /= v.z
    @
  divideScalar:(s)->
    if s
      @x /= s
      @y /= s
      @z /= s
    else 
      @x = 0
      @y = 0
      @z = 0
    @
  negate:-> @.multiplyScalar(-1)
  dot:(v)-> @x*v.x+@y*v.y+@z*v.z
  lengthSq:-> @x*@x+@y*@y+@z*@z
  length:-> Math.sqrt(@.lengthSq())
  lengthManhattan:-> Math.abs(@x) + Math.abs(@y) + Math.abs(@z)
  normalize:-> @.divideScalar(@.length())
  setLength:(l=1)-> 
    @.normalize().multiplyScalar(l)