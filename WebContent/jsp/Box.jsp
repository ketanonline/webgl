<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style> body { margin: 0; } canvas { width: 100%; height: 100% } </style>
</head>
<body>
	<script src="../js/three.min.js"></script>
	<script src="../js/scenes/Scene.js"></script>
	<script src="../js/cameras/PerspectiveCamera.js"></script>
	<script src="../js/renderers/WebGLRenderer.js"></script>  
	<script src="../js/extras/geometries/BoxGeometry.js"></script>
	<script src="../js/materials/MeshBasicMaterial.js"></script>
	<script src="../js/objects/Mesh.js"></script>    
	<script src="../js/textures/VideoTexture.js"></script>
	
	<script> 
		var scene = new THREE.Scene(); 
		var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 ); 
		var renderer = new THREE.WebGLRenderer(); 
		renderer.setSize( window.innerWidth, window.innerHeight ); 
		document.body.appendChild( renderer.domElement ); 
		var geometry = new THREE.BoxGeometry( 1, 1, 1 ); 
		var material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } ); 
		var cube = new THREE.Mesh( geometry, material ); 
		scene.add( cube ); camera.position.z = 5; 
		var render = function () { 
			//requestAnimationFrame( render ); 
			cube.rotation.x += 0.1; 
			cube.rotation.y += 0.1; 
			renderer.render(scene, camera); 
		}; 
		render(); 
	</script>
</body>
</html>