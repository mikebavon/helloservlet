<h1> This world is great</h1>
<%
	if(name.equals("John   Doe"))
		out.println("We know this guy");
	else
		out.println("<span style=\"color: red;\">We have never seen him before!!</span>");

    double result = Math.sqrt(number1 + number2);
%>

<h1><%=  printName() %></h1>
<h1><%=  new Date() %></h1>

<h2><%= result %></h2>