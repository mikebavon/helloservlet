<%@ page import="java.util.Date" %>
<%! 
	String name = "John Doe";
	
	String printName(){
		return name;
	}
	
	//int years = new int[3]{2010,2011,2013};
%>
<h1> This world is great</h1>
<%
	if(name.equals("John   Doe"))
		out.println("We know this guy");
	else
		out.println("<span style=\"color: red;\">We have never seen him before!!</span>");
%>

<h1><%=  printName() %></h1>
<h1><%=  new Date() %></h1>