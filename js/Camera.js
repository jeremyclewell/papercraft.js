// Generated by CoffeeScript 1.3.3
var Camera;

Camera = (function() {

  function Camera(perspective, perspectiveOrigin, transformStyle, backfaceVisibility) {
    this.perspective = perspective != null ? perspective : 300;
    this.perspectiveOrigin = perspectiveOrigin;
    this.transformStyle = transformStyle != null ? transformStyle : "preserve-3d";
    this.backfaceVisibility = backfaceVisibility != null ? backfaceVisibility : "visible";
  }

  return Camera;

})();
