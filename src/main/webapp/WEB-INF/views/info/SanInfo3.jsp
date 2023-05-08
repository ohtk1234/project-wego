<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="module1">


 
            <div class="cotents">
            <div class="content1">
            <table>
    <thead>
    <tr>
        <th>Time</th>
        <th>Temperature</th>
        <th>Humidity</th>
        <th>Wind Speed</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${weather}" var="data">
        <tr>
            <td>${data.getFcstTime()}</td>
            <td>${data.getFcstValue()} กษ</td>
            <td>${data.getCategory() == 'REH' ? data.getFcstValue() : '-'}</td>
            <td>${data.getCategory() == 'WSD' ? data.getFcstValue() : '-'}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
            </div>
            </div>

         
</div>