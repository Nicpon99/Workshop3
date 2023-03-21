<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
            <a href="http://localhost:8080/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkownika</a>
          </div>

            <style>
                .table-bordered {
                    border: 1px solid #dee2e6;
                    border-collapse: collapse;
                    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
                }
            </style>


            <table class="table table-striped table-bordered">
                <div class="card">
                    <div class="card-header table-bordered">
                        <span style="font-size: 18px; color: #0077ff; font-weight: bold;">Lista użytkowników</span>
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nazwa użytkownika</th>
                    <th scope="col">Email</th>
                    <th scope="col">Akcja</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="user" items="${users}">
                <tr>
                    <th scope="row">${user.id}</th>
                    <td>${user.userName}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                        <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edit</a>
                        <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                    </td>
                </tr>
                </c:forEach>
                    </div>
                </div>

                </tbody>
            </table>

        </div>
        <!-- /.container-fluid -->

<%@ include file="footer.jsp" %>
