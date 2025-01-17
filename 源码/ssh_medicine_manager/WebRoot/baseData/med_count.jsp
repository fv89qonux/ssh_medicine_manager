<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
  <head>
    <title><bean:message key="system.category.medicine.storage" /></title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="../images/styles.css">
	<script type="text/javascript">
		function query(){
			var form = document.forms["queryForm"];
			if(form.elements["count"].value == ""){
				alert("<bean:message key="medicine.storage.count.null" />");
				form.elements["count"].focus();
				return false;
			}
			if(isNaN(form.elements["count"].value)){
				alert("<bean:message key="medicine.storage.count.format" />");
				form.elements["count"].focus();
				return false;
			}
		}
	</script>
  </head>
  <body>
    <div class="div1">
		<table width="100%" cellpadding="0" cellspacing="0" border="0"
			align="center">
			<tr>
				<td class="td_title1">
					��<bean:message key="system.current.place"/>��
					<bean:message key="system.category.medicine"/>
					&gt;&gt; <bean:message key="system.category.medicine.storage" />
				</td>
			</tr>
			<tr>
				<td bgcolor="#FFFFFF" height="100" valign="top">
					<br>
   <form name="queryForm" action='<html:rewrite page="/baseData/med.do"/>' method="post" onsubmit="return query();">
    	<input type="hidden" name="command" value="QueryMedCount" />
      <table border="0" align="center" width="450">
        <tr>
          <td align="center">
          	<bean:message key="medicine.storage.count" />��
          	<select name="type">
				<option value="0">=</option>
				<option value="1">&gt;</option>
				<option value="-1">&lt;</option>
			</select>
			<input type="text" name="count" size="5" />
			<input type="submit" value='<bean:message key="button.query" />'>
          </td>
        </tr>
      </table>
    </form>
  
  </td>
			</tr>
		</table>
	</div>
</body>
</html:html>
