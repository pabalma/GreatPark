<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Great Park</title>
        <!-- Favicon-->
        <link rel="icon" type="../image/x-icon" href="../assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/greatpark/css/styles.css" rel="stylesheet" />
        <script src="/greatpark/include/jquery-3.6.0.js"></script>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"><a class="bg-light list-group-item-light" href="/">Home</a></div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">이용안내</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/reservation/list.do">예약</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">굿즈구입</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">공지</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">고객요청</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">사이트맵</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">메 뉴</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                            <c:choose>
                            	<c:when test="${sessionScope.userid != null }">
                            		<li class="nav-item nav-link">${sessionScope.name }(${sessionScope.userid })님 환영합니다</li>
                            		<li class="nav-item active"><a class="nav-link" href="/user/detail/${sessionScope.userid }">내 정보</a></li>
									<li class="nav-item active"><a class="nav-link" href="/user/logout.do">로그아웃</a></li>
								</c:when>
								<c:otherwise>
	                                <li class="nav-item active"><a class="nav-link" href="/user/login.do">로그인</a></li>
	                                <li class="nav-item"><a class="nav-link" href="/user/join.do">회원가입</a></li>
								</c:otherwise>
                            </c:choose>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Action</a>
                                        <a class="dropdown-item" href="#!">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Something else here</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
