<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="module1">

	

            <div class="cotents">
            <div class="content1">
            <h2>100명산 선정 이유</h2>
            <p>${sanInfoVO.reason}</p>
      		<h2>높이</h2>
            <p>${sanInfoVO.height} M</p>
            <h2>상세 설명</h2>
            <p>${sanInfoVO.details}</p>
            

            </div>
            </div>

          
</div>