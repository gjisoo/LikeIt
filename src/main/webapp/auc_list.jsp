<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
[
	<c:forEach var="avo" items="${requestScope.ar }" varStatus="st">
	{
		"a_date":"${avo.a_date }",
		"m_id":"${avo.m_id }",
		"a_price":"${avo.a_price }"
	}
	<c:if test="${st.index < fn:length(requestScope.ar)-1  }">,</c:if>
	</c:forEach>
]