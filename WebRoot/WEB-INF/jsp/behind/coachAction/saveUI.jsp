<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<html>
<head>
	<title>教练设置</title>
    <%@ include file="/WEB-INF/jsp/behind/public/common.jspf" %>
</head>
<body> 

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 教练信息设置
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id="MainArea">

    <s:form action="coach_%{ id == null ? 'add' : 'edit' }">
    	<s:hidden name="id"></s:hidden>
    
        <div class="ItemBlock_Title1"><DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 教练信息 </DIV>
        </div>
        
	        <table cellpadding="0" cellspacing="0" class="mainForm">
	           
	        </table>
        
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                	<tr>
                		<td width="100">教练所在组</td>
                		<td>
                			<s:select name="parentId" list="#coachList" listKey="id" listValue="name"
                			headerKey="" headerValue="请选择教练（组）" 
                			cssClass="SelectStyle">
                			</s:select>
                		</td>
                	</tr>
                    <tr>
                        <td width="100">教练姓名</td>
                        <td><s:textfield name="name" cssClass="InputStyle" /> </td>
                    </tr>
                    <tr>
                        <td>教练简介</td>
                        <td><s:textarea name="description" cssClass="TextareaStyle"></s:textarea></td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
    </s:form>
</div>

</body>
</html>

