<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.zerock.wego.domain.CommentVO" %>
<%@page import= "java.util.List" %>
<%@page import= "java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <c:set var="path" value="${pageContext.request.contextPath}"/> --%>

<script type="text/javascript" src="${path}/resources/js/comment.js" defer ></script>
<script type="text/javascript" src="${path}/resources/js/delete.js" defer ></script>
<script type="text/javascript" src="${path}/resources/js/report.js" defer ></script>

	
				<div class="comments mention">
				<input type="hidden" id="mentionId" value="${c.mentionId }"/>
				<img class="cmtuserPic" src="${c.userPic }"/>
				<div class="cmtuser">${c.nickname }</div>
				<div class="cmtdate">
						<fmt:formatDate pattern="MM-dd HH:mm" value="${c.createdDt}"></fmt:formatDate>
				</div>
				<div class="btns">
					<input type="hidden" id= "commentId" name="commentId" value="${c.commentId}">
					<c:if test="${c.userId == sessionScope.__AUTH__ && c.reportCnt < 5 }"> <!--  이거 조건 바꿔야된다!!!! -->
					<input type="button" class="modifycmt" name="modifycmt" value="수정" /> 
					<input type="button" class="deletecmt" name="deletecmt" value="삭제" /> 
					</c:if>
					<input type="button" class="reportcmt" name="reportcmt" value="신고" />
				</div>
					<div class="comment">${c.contents}</div>
			
				
				<div class="updatebtn">
					<input type="button" name="updatecls" value="취소" />
					<input type="button" name="updatecmt" value="수정" />
				</div>
			</div>
