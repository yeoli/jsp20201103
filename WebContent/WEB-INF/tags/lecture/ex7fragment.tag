<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" fragment="true"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

${title }

<hr />

<jsp:invoke fragment = "title" />

<hr />
<jsp:doBody />