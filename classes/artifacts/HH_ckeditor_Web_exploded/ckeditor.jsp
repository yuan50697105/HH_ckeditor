<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="ckeditor" uri="http://ckeditor.com" %>
<%@page import="com.ckeditor.CKEditorConfig"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>first use of CKEditor</title>
<link type="text/css" rel="stylesheet" href="js/ckeditor/contents.css" />
</head>
<body>
<% 
	CKEditorConfig settings = new CKEditorConfig();
	settings.addConfigValue("width", "500");//宽度
	settings.addConfigValue("height", "200");//高度
	settings.addConfigValue("toolbar", "Basic");//工具栏
%>
<textarea cols="10" id="editor1" name="editor1" rows="10">only for a test</textarea>
<ckeditor:replace  replace="editor1" basePath="js/ckeditor/" config="<%= settings %>"></ckeditor:replace>
</body>
</html>