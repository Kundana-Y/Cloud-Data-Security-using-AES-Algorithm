<%@page import="databaseconnection.Databasecon"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.crypto.CipherInputStream"%>
<%@page import="java.util.Base64"%>
<%@page import="java.security.Key"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
	String shop=null,shap=null;
	String index=null,key=null;
	Statement st = null;
	ResultSet rs1=null;
	int iid=0;
try{	
	ServletContext context = getServletContext();
	String dirName =context.getRealPath("\\Gallery");
	System.out.println("file path:"+dirName);
	String paramname=null;
	String file=null;

	File file1 = null;
		
	
			try {
				
				MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
		
				Enumeration params = multi.getParameterNames();
				while (params.hasMoreElements()) 
				{
					paramname = (String) params.nextElement();
					
					if(paramname.equalsIgnoreCase("fkey"))
					{
						shop=multi.getParameter(paramname);
						System.out.println("name="+shop);
					}
					if(paramname.equalsIgnoreCase("file"))
					{
						shap=multi.getParameter(paramname);
						System.out.println("name="+shap);
					}
				}
						
				int f = 0;
		Enumeration files = multi.getFileNames();	
		while (files.hasMoreElements()) 
		{
			paramname = (String) files.nextElement();
			if(paramname.equals("d1"))
			{
				paramname = null;
			}
			
			if(paramname != null)
			{
				f = 1;
				shap = multi.getFilesystemName(paramname);				
				String fPath = context.getRealPath("\\Gallery\\"+shap);				
				Cipher cipher=Cipher.getInstance("AES");
				byte[] decodedKey = Base64.getDecoder().decode(shop);
				//rebuild key using SecretKeySpec
				Key originalKey = new SecretKeySpec(decodedKey, 0, decodedKey.length, "AES");
				cipher.init(Cipher.DECRYPT_MODE, originalKey);

				CipherInputStream ciptt=new CipherInputStream(new FileInputStream(new File(fPath)), cipher);

				FileOutputStream fop=new FileOutputStream(new File("C:/Users/sun2/Downloads/"+shap));

				int j;
				while((j=ciptt.read())!=-1)
				{
				fop.write(j);
				}
				
			}		
		}				
	} 
	catch (Exception e) 
	{
		out.println(e.getMessage());
	}	
		
}
catch (Exception eq) 
	{
		out.println(eq.getMessage());
	}
%>
<script type="text/javascript">
alert("file decrypted successfully...");
window.location="decryption.jsp";
</script>
<%
%>
</body>
</html>