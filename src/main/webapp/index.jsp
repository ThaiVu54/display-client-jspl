<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="customer.Customer" %>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }
    </style>
    <title>$Title$</title>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer(1, "Thai", "Nam Dinh"));
    customers.add(new Customer(2, "Xuan Anh", "lom dom"));
    customers.add(new Customer(3, "Lap", "Ha Loi"));
    customers.add(new Customer(4, "An", "Nghia Tan"));

    request.setAttribute("list", customers);
%>
<table>
    <tr>
        <t:forEach items="${list}" var="customers">
        <td>${customers.id}</td>
        <td>${customers.name}</td>
        <td>${customers.address}</td>
    </tr>
    </t:forEach>>
</table>

</body>
</html>
