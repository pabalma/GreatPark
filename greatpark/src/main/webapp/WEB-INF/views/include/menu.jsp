<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
    
    <div style="text-align: right">
    	<c:choose>
    		<c:when test="${sessionScope.adminid != null }">
    			${sessionScope.name }님이 로그인중입니다.
    			<a href="/pj/admin/logout.do">관리자 로그아웃</a>
    			<a href="/pj/admin/detail/${sessionScope.adminid }">관리자 정보</a>
    			<a href="/pj/reservation/list.do">내 예약</a>
    		</c:when>
    		<c:when test="${sessionScope.userid != null }">
    			${sessionScope.name }님이 로그인중입니다.
    			<a href="/pj/user/logout.do">로그아웃</a>
    			<a href="/pj/user/detail/${sessionScope.userid }">회원 정보</a>
    			<a href="/pj/reservation/list.do">내 예약</a>
    		</c:when>
    		<c:otherwise>
    			<a href="/pj/user/login.do">로그인</a>
    			<a href="/pj/admin/login.do">관리자 로그인</a>
    		</c:otherwise>
    	</c:choose>
    </div>
   