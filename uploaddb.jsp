
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="org.apache.poi.hwpf.HWPFDocument"%>
<% 
String email=(String)session.getAttribute("email");
System.out.println("email:"+email);


String fname=null,dname=null,file=null,filesize=null,fkey=null,image=null,date=null,content1=null,fid=null,fPath=null,ss=null,size33=null;
		/* Statement st = null; */
		ResultSet rs1=null;
		int iid=0,score=0;
		int ch,id1=0;		
		FileInputStream fs=null;		
		int m=0;		
			/* session.setAttribute("fid",m); */
			
				ArrayList list = new ArrayList();
		ServletContext context = getServletContext();
		String dirName =context.getRealPath("\\Gallery");
		String paramname=null;		
     StringBuffer strContent = new StringBuffer("");
		File file1 = null;	
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	1024 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("fid"))
				{
					fid=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("pkey"))
				{
					fname=multi.getParameter(paramname);
					
				}
				
				if(paramname.equalsIgnoreCase("fkey"))
				{
					fkey=multi.getParameter(paramname);
					
				}
				if(paramname.equalsIgnoreCase("date"))
				{
					date=multi.getParameter(paramname);
					
				}
				
			if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
					
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
			image = multi.getFilesystemName(paramname);
			 fPath = context.getRealPath("\\Gallery\\"+image);
			System.out.println("fpath=========="+fPath);
			file1 = new File(fPath);
			fs=new FileInputStream(file1);
			list.add(fs);
		}		
	}
	        		 
			Connection con2=Databasecon.getconnection(); 

			PreparedStatement ps=con2.prepareStatement("insert into upload(email,file,fname,pkey,fkey,date) values(?,?,?,?,?,?)");
			
			ps.setString(1,email);	
			fs = (FileInputStream)list.get(0);
			ps.setBinaryStream(2,fs,fs.available());
		    ps.setString(3,image);
			ps.setString(4,fname);		
		    ps.setString(5,fkey);
		    ps.setString(6,date);  
      
			int x=ps.executeUpdate();
		
			if(x!=0)
			{%>
			<script>
			alert("file upload successfully");
			window.location="upload.jsp";
				</script>
			<% }
			else
			{
				%>
				<script>
				alert("file upload error");
				window.location="upload.jsp";
					</script>
		<% 	}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			
 %>

	
 

 