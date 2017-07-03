<%-- 
    Document   : addItem
    Created on : 2/07/2017, 06:22:33 PM
    Author     : Sefir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Items</title>
    </head>
    <body>
        <h1>Add Items!</h1>
        
        <form action="addItem" method="post">
            Item Type: <input type ="text" name ="typeI">
            <br><br><br>
            Item Name: <input type="text" name="nameI">
            <br><br><br>
            Feature 1: <input type="text" name ="feat1">
            <br><br><br>
            Feature 2: <input type="text" name ="feat2">
            <br><br><br>
            Feature 3: <input type="text" name="feat3">
            <br><br><br>
            
            <input type="submit" value="Save Data">
        </form>
        
    </body>
</html>
