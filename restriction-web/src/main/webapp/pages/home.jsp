<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
       	<jsp:include page="common.jsp"></jsp:include>
    </head>
    <body>

	<div style="height:45px">
		  <jsp:include page="restrictionNavbar.jsp"></jsp:include>
	</div>
      

	<div id="wrap">
		<div id="main" class="container clear-top">
			<p>Your content here</p>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
	</body>
</html>