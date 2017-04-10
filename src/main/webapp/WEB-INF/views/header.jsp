<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Spring MVC Web: JavaStud</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/simple-sidebar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery.dataTables.css">

<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script	src="${pageContext.request.contextPath }/resources/js/jquery.dataTables.js"></script>

</head>
<body>

	<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <a href="#">
                    	<img alt="" src="${pageContext.request.contextPath }/resources/img/monkey_testing.jpg"  class="img-responsive"/>
                    	<h1>¯\_(ツ)_/¯</h1>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/">Login</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/profile">HOME</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/stud">Student Form</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/upload">File Upload Example</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/rest">Rest API Example</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/angular">Angular App</a>
                </li>
                <li>
                    <form class="" action="<c:url value="/logout"/>" method="post">
                        <input type="submit" class="btn btn-link" value="Log out"/>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/about">About</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content: Example from: https://startbootstrap.com/template-overviews/simple-sidebar/ -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                	<div class="row">
                		<div class="col-lg-4">
	                		<a href="#menu-toggle" class="btn btn-default" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></a>
	                	</div>
	                	<div class="col-lg-8">
                            <form class="" action="<c:url value="/logout"/>" method="post">

                                Welcome: <c:out value="${pageContext.request.remoteUser}"/>  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

                                <input type="submit" class="btn btn-link" value="Log out"/>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>
	                	</div>
                	</div>
                    <div class="col-lg-12">
	