<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ taglib prefix="fn"
uri="http://java.sun.com/jsp/jstl/functions"%>
    

    
            <div class="content1">
              <h2>내가 쓴 글✍</h2>
              <table class="middle">
                <thead>
                  <tr style="align-items: center">
                    <th class="t1" width="70">게시판명</th>
                    <th class="t2" width="300">글 제목</th>
                    <th class="t3" width="120">작성일</th>
                    <th class="t4" width="70">조회</th>
                    <th class="t5">좋아요수</th>
                  </tr>
                </thead>
                <tbody>
	                 <c:forEach items="${writtenList}" var="profileVO">
			          <tr>
			            <td class="t1">${profileVO.boardName}</td>
			            <td class="t2">
			              <c:choose>
			                <c:when test="${profileVO.boardName eq '등산후기'}">
			                  <c:set var="mappingURI" value="review"></c:set>
			                </c:when>
			                <c:otherwise>
			                  <c:set var="mappingURI" value="party"></c:set>
			                </c:otherwise>
			              </c:choose>
			              <c:if test="${not empty mappingURI}">
			                <a href="/${mappingURI}/${profileVO.srtId}">
			                  ${profileVO.title}
			                </a>
			              </c:if>
			            </td>
			            <td class="t3">
			              <fmt:formatDate
			                pattern="yyyy-MM-dd"
			                value="${profileVO.createDt}"
			              ></fmt:formatDate>
			            </td>
			            <td class="t4">100</td>
			            <td class="t5">&#128149;${profileVO.likeCnt}</td>
			          </tr>
			        </c:forEach>
                </tbody>
              </table>
            </div>
            
            <div id="pagination">
		     <form action="paginationForm">
		      <ul class="paginUl">
		        <!-- Prev 표시 -->
		        <c:if test="${pageMaker.prev}">
		          <li class="prev">
		            <span
		              data-temp="${pageMaker.cri.setCurrPage(pageMaker.startPage - 1 )}" onclick="selectClickCurrPagePrev()">Prev</span>
		            <input type="hidden" id="currPagePrev" value="${pageMaker.startPage - 1}">
		          </li>
		        </c:if>
		
		        <!-- 페이지 번호 목록 표시 -->
		        <c:forEach
		          var="pageNum"
		          begin="${pageMaker.startPage}"
		          end="${pageMaker.endPage}"
		        >
		          <!-- 조건문으로 지금 현재 페이지확인 : 전송파라미터중 현페이지번호가같다면 비운다. -->
		          <li class="${param.currPage eq pageNum ? 'currPage' : ''}  myPostPage${pageNum}">
		            <span id="currPageNum" onclick="selectClickCurrPage()">${pageNum}</span
		            >
		          </li>
		          <!-- 숫자만 표시됨. -->
		        </c:forEach>
		
		        <!-- Next 표시 :  core 조건문 
		          현재페이지 기준으로 계산되어야함. 다 모델속성에 PageMaker저장되어잇음-->
		        <c:if test="${pageMaker.next}">
		          <li class="next">
		            <span
		              data-temp="${pageMaker.cri.setCurrPage(pageMaker.endPage+1)}" onclick="selectClickCurrPageNext()">Next</span>
		              <input type="hidden" id="currPageNext" value="${pageMaker.endPage+1}">
		          </li>
		        </c:if>
		      </ul>
		    </form>
		  </div>

          
          <script>
          
          var myPostCurrPage = "${__MyPostCurrPage__}";
  	      if(myPostCurrPage == 1) {
  	        $('.myPostPage1').addClass("currPage");
  	      }
          
          function selectClickCurrPage() {
              var currPage = event.target.innerText;
              $.ajax({
                    type: 'get',
                    url: '/profile/mypost?userId='+ userId,
                    data:{"cri.currPage":currPage,userId:"${userId}"},
                    success: function(data){
                        $(".content1").load("/profile/mypost?userId="+userId+"&currPage="+currPage);
                    }//success
             	 });//ajax
          }//selectClickCurrPage
          
		function selectClickCurrPagePrev () {
				 var currPage = $( '#currPagePrev' ).val();
				 $.ajax({
	                    type: 'get',
	                    url: '/profile/mypost?userId='+ userId,
	                    //data:{"currPage":currPage,"amount":10,userId:"${userId}"},
	                    success: function(data){
	                        $(".content1").load("/profile/mypost?userId="+userId+"&currPage="+currPage);
	                    }//success
	             	 });//ajax
				} //selectClickCurrPagePrev
		
		 function selectClickCurrPageNext () {
		         var currPage = $( '#currPageNext' ).val();
		         $.ajax({
	                    type: 'get',
	                    url: '/profile/mypost?userId='+ userId,
	                    //data:{"currPage":currPage,"amount":10,userId:"${userId}"},
	                    success: function(data){
	                        $(".content1").load("/profile/mypost?userId="+userId+"&currPage="+currPage);
	                    }//success
	             	 });//ajax
		} //selectClickCurrPageNext
	
</script>
