<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String str = request.getParameter("str");
	String str3 = request.getParameter("str3");
	out.println("str : " + str);
	out.println("str3 : " + str3);
	int a = 1;

	String str1 = "";
	String str2 = "";

	if(a==1) {
		str1 = "문자열1"; 
		str2 = "문자열2";
		%>
		
<input type="text" name="str1" id="str1" value="<%=str1%>">
<input type="text" name="str2" id="str2" value="<%=str2%>">
<input type="button" value= "확인">

		<% 
	}else{
		str1 = "";
		str2 = "";
	
%>
입력할 수 있는 인풋박스가 존재하지 않습니다.
<%
}
%>
</body>
</html>