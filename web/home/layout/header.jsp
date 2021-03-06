<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <div>
        <div class="logo">
            <img src="${ pageContext.request.contextPath }/images/logo.png" alt="">
        </div>

        <div class="header-search">
            <div>
                <input type="text" class="form-control" placeholder="请输入商家或者地点">
                <button type="button" class="btn btn-info" style="background-color: #13D1BE;">搜 索</button>
            </div>
        </div>

        <c:if test="${ user != null }">
            <div class="header-login">
                <p>欢迎您，<a href="${ pageContext.request.contextPath }/get/myStore?id=${ user.id }">${ user.name }</a></p>
                <p><a href="/LogoutServlet">注销</a></p>
            </div>
        </c:if>
        <c:if test="${ user == null }">
            <div class="header-login">
                <a href="/home/login/login.jsp">登录</a>
                <span>|</span>
                <a href="/home/login/register.jsp">注册</a>
            </div>
        </c:if>
    </div>
</div>