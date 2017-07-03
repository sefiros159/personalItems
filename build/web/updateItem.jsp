<%-- 
    Document   : updateItem
    Created on : 2/07/2017, 06:57:36 PM
    Author     : Sefir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Items</title>
    </head>
    <body>
        <h1>Update Items</h1>
        <hr/>
        
        <form action="updateCustomer" method="post">
             
            <c:forEach var="datos" items="${same}">
                Item ID <input type="text" name="ItemId" value="${datos[0]}">
                <br><br>
                Item Type: <input type="text" name="Itype" value="${datos[1]}">
                <br><br>
                Item Name: <input type="text" name="Iname" value="${datos[2]}">
                <br><br>
                Feature 1: <input type="text" name="Feat1" value="${datos[3]}">
                <br><br>
                Feature 2: <input type="text" name="Feat2" value="${datos[4]}">
                <br><br>
                Feature 3: <input type="text" name="Feat3" value="${datos[5]}">
                <br><br>
                <br><br>
                <input type="submit" value="Update">
            </c:forEach>
            
        </form>
        
    </body>
</html>
