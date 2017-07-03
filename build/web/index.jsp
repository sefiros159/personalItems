<%-- 
    Document   : index
    Created on : 2/07/2017, 05:11:12 PM
    Author     : Sefir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Item</title>
    </head>
    <body>
        <h1>Items</h1>
        <hr/>
        
        <table width ="100%">
            <tr>
                <td rowspan="4">
                    <div id="principal">
                        
                        <table width="100%" border="3" bordercolor="BLUE">
                            <td>Id</td>
                            <td>Item Type</td>
                            <td>Item Name</td>
                            <td>Feature 1</td>
                            <td>Feature 2</td>
                            <td>Feature 3</td>
                            
                            <c:forEach var="dato" items = "${vista}">
                                <tr>
                                    <c:forEach var="registros" items="${dato}">
                                        <td>${registros}</td>
                                    </c:forEach>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <br><br>
        <hr>
        
        <a href="addItem.jsp">Add New Items</a>
        
                          
        
    </body>
</html>
