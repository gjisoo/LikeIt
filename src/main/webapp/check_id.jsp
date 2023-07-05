<%@page import="dao.MinDAO"%>
<%@page import="mybatis.service.FactoryService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${requestScope.chk }">
<span id="chk" class="success">사용가능</span>
</c:if>

<c:if test="${!requestScope.chk }">
<span id="chk" class="fail">사용불가</span>
</c:if>
