<html>
<head><title>Welcome Home</title>
<script type="text/javascript">

var showTable = function(){
	var ajax = new XMLHttpRequest();
	
	ajax.onreadystatechange = function(){
		if(ajax.readyState == 4 && ajax.status == 200)
			document.getElementById('load-data').innerHTML = ajax.responseText;
	}

	ajax.open("GET", "./school", true);
	ajax.send();
}

</script>
</head>
<body>
<h1>Systech Services</h1>
<ol>
<li>Software Development</li>
<li>Software Testing</li>
<li>Networking</li>
<li>Training</li>
</ol>
<h1>Interns</h1>
<div id = "load-data">

</div>
<hr/>
<br/>
<span style="color:red;">Register</span>
<form action="#">
First Name: <input type="text" name="firstname"><br/>
Last Name: <input type="text" name="lastname"><br/>
Address: <input type="text" name="address"><br/>
Gender: <select><option value="MALE">Male</option><option value="FEMALE">Female</option></select><br/>
</form>
<button onclick="showTable()">Show table</button>
</body>
</html>
