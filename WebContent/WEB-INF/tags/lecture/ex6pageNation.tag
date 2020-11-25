<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="begin" required="true" %>
<%@ attribute name="end" required="true"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach begin="${begin }" end="${end }" var="i">  
    <li class="page-item"><a class="page-link" href="#">${i}</a></li>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>