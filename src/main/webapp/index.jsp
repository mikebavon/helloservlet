<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student"  class="systech.internship.student.Student"/>
<%@ include file="default.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Welcome Home</title>
<style type="text/css">

</style>
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
<%

if(request.getParameter("number1") != null)
	number1 = Integer.parseInt(request.getParameter("number1"));

if(request.getParameter("number2") != null)
	number2 = Integer.parseInt(request.getParameter("number2"));

%>
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
<span style="color:red;">Calculator</span>
<form action="#">
Number One: <input type="text" name="number1"><br/>
Number Two: <input type="text" name="number2"><br/>
<input type="submit" value="Submit">
</form>
<button onclick="showTable()">Show table</button>

<hr/>
The sum is <%=  student.calculate(number1, number2) %>

</body>
</html>
