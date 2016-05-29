<%@ page import="java.io.*,java.util.*,java.sql.*,javax.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<%@ page import="java.sql.*,javax.sql.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <%   String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<title>查询结果</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<sql:setDataSource var="snapshot" driver="org.mariadb.jdbc.Driver"
     url="jdbc:mariadb://localhost:3306/guitar"
     user="root"  password="123456"/>
     <sql:query dataSource="${snapshot}" var="result">
   select * from guitar where + 'sql'
      </sql:query>

                    <table  width="100%">
                        <tr>
                          
                             <th>价格</th>
                            <th>制造商</th>
                            <th>型号</th>
                       		<th>类型</th>
                            <th>木料</th>
                           <th>库存</th>
                            
                            
                        </tr>
                        <tr>
                            
                            <td><c:forEach var="row" items="${result.rows}">
<c:out value="${row.price}"/></br>

</c:forEach></td>
                            <td ><c:forEach var="row" items="${result.rows}">
<c:out value="${row.builder}"/></br/>

</c:forEach>
                            </td>
                            <td><c:forEach var="row" items="${result.rows}">
<c:out value="${row.model}"/></br/>

</c:forEach></td>
                           
                        <td><c:forEach var="row" items="${result.rows}">
<c:out value="${row.type}"/></br/>

</c:forEach></td> 
                       <td><c:forEach var="row" items="${result.rows}">
<c:out value="${row.wood}"/></br/>

</c:forEach></td>

                       <td><c:forEach var="row" items="${result.rows}">
<c:out value="${row.number}"/></br/>

</c:forEach></td>


                        </tr>
                        
                    </table>
                   
            
</body>
</html>
  
</body>
</html>