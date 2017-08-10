<%@page import="java.io.*"%>
<html>
<head>
</head>
<body>
		<form name="uploadForm" action="ijeee/UploadServlet"  method="post" enctype="multipart/form-data">
	<table align="center" border="1">
		
		<%
			File file = new File("C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/Trail/volumes");
			String paths[] = file.list();
			
		
		%>
		<tr>	<td >select folder</td>
		       	<td><select name="dir">
		<%	
				for(String path:paths)
				{
		%>
		
					<option value="<%=path%>"><%=path%></option>
		<%
				}

		%>     </select>
			</td>
		</tr>
		
		  
		<tr>	<td>Select file</td><td><input type="file"  name="file"></td>
		</tr>
		<tr>	<td><input type="reset"> 
			</td>
		       	<td><input type="submit">
			</td>
		</tr>
		

	</table>

	</form>


</body>
</html>