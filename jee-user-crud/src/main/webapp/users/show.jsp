<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="http://localhost:8080/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
  </div>

  <style>
    .table-bordered {
      border: 1px solid #dee2e6;
      border-collapse: collapse;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }
  </style>


  <table class="table table-hover table-bordered">
    <div class="card">
      <div class="card-header table-bordered">
        <span style="font-size: 18px; color: #0077ff; font-weight: bold;">Szczegóły użytkownika</span>

        <tbody>


        <tr>
          <th scope="row">ID</th>
          <td>${user.id}</td>
        </tr>

        <tr>
          <th scope="row">Nazwa użytkownika</th>
          <td>${user.userName}</td>
        </tr>

        <tr>
          <th scope="row">Email</th>
          <td>${user.email}</td>
        </tr>


      </div>
    </div>

    </tbody>
  </table>

</div>
<!-- /.container-fluid -->

<%@ include file="footer.jsp" %>
