uniform float time;

varying vec2 vUv;
attribute vec3 instancePosition;
attribute vec3 instanceColor;
attribute float instanceOffset;

varying vec3 vColor;
varying float vOffset;

void main() {
  vUv = uv;
  vColor = instanceColor;
  vOffset = instanceOffset;
  vec3 newposition = position + instancePosition;



  gl_Position = projectionMatrix * modelViewMatrix * vec4( newposition, 1.0 );
}