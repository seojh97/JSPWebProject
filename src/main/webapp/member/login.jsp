<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/global_head.jsp" %>


 <body>
	<center>
	<div id="wrap">
		<%@ include file="../include/top.jsp" %>

		<img src="../images/member/sub_image.jpg" id="main_visual" />

		<div class="contents_box">
			<div class="left_contents">
				<%@ include file = "../include/member_leftmenu.jsp" %>
			</div>
			<div class="right_contents">
				<div class="top_title">
					<img src="../images/login_title.gif" alt="인사말" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;멤버쉽&nbsp;>&nbsp;로그인<p>
				</div>
				<div class="login_box01">
					<img src="../images/login_tit.gif" style="margin-bottom:30px;" />
					<%
				    /*
				    session영역에 해당 속성값이 있는지 확인한다.
				    즉, session영역에 데이터가 없다면 로그아웃 상태 이므로 로그인 폼을 웹브라우저에 출력한다.
				    */
				    if (session.getAttribute("Id") == null) { 
    				%>
					<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this);">
					<ul>
						<li><img src="../images/login_tit001.gif" alt="아이디" style="margin-right:15px;" /><input type="text" name="" value="" class="login_input01" /></li>
						<li><img src="../images/login_tit002.gif" alt="비밀번호" style="margin-right:15px;" /><input type="password" name="" value="" class="login_input01" /></li>
					</ul>
					<input type="image" src="../images/login_btn.gif" class="login_btn01" />
					<p style="margin-left:30px; *text-align:center; *margin-bottom:50px;"><a href="../member/id_pw.jsp"><img src="../images/login_btn02.gif" alt="아이디/패스워드찾기" /></a>&nbsp;<a href="../member/join01.jsp"><img src="../images/login_btn03.gif" alt="회원가입" /></a></p>
					</form>
					<%
				    } else {
				    	//로그인이 된 상태에서는 회원의 이름과 로그아웃 버튼을 출력한다.
				    %>
				        <%= session.getAttribute("Name") %> 회원님, 로그인하셨습니다.<br />
				        <a href="Logout.jsp">[로그아웃]</a>
				    <%
				    }
				    %>
				</div>
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>


	<%@ include file="../include/footer.jsp" %>
	</center>
 </body>
</html>
