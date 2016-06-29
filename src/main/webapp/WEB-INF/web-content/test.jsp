
<html>
<head>
<script>
	window.addEventListener("message", function(event) {
		console.log(event.data);
		//event.source.postMessage("You cant close it. Gaand marao", event.origin);
		event.source.postMessage("", event.origin);
	}, false);
</script>
</head>
<body>hello
</body>
</html>
