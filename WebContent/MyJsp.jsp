<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<div>
		<table width="100%" border="0" cellspacing="1" id="tt" bgcolor="#ffffff">
  <tr class="firstpage1">
  <td colspan="16"  align="left">
  </tr>
  <tr class="firstpage" >
    <td height="23" width="5%">序号</td>
    <td width="5%">交通工具</td>
    <td width="5%">出发地点</td>
	<td width="5%">抵达地点</td>
    <td width="5%">
    	<a href="javascript:void(0)"   onclick="addNew()">添加明细</a>
    </td>
  </tr> 
  </table>
	</div>
	<input type="button" value="添加" οnclick="insert_row()"/>
</body>
</html>