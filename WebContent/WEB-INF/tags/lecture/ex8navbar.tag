<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="menus" type="java.util.List" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <c:forEach items="${menus }" var="menu" >
      <li class="nav-item active">
        <a class="nav-link" href="#">${menu }</a>
      </li>
      </c:forEach>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
    </ul>
    
  </div>
</nav>