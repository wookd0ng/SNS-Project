<%@ page contentType="text/html" pageEncoding="utf-8" %> 
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="util.*" %>
<%@ page import="dao.*" %>
<%
	String jsonstr = null, ufname = null;
	byte[] ufile = null;
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	List items = sfu.parseRequest(request);
	Iterator iter = items.iterator();
	while(iter.hasNext()) {
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		if(item.isFormField()){
			String value = item.getString("utf-8");
			//if (name.equals("id")) uid = value;
			//else if (name.equals("content")) ucon = value;
			if (name.equals("jsonstr")) jsonstr = value;
		}
	}
	
	FeedDAO dao = new FeedDAO();
	//if (dao.insert(uid, ucon, ufname)) {
	if (dao.insert(jsonstr)) {
	// response.sendRedirect("main.jsp");
		out.print("OK");
	}
	else {
		out.print("ER");
	}
	
%>