<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="attr" %>
<%@ attribute name = "attr0" %>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

${attr.attr1}

<br />

${attr["attr2"]}

<br />

<hr />

<ul>
<c:forEach items="${attr }" var="entry">
  <li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul>

${attr0}