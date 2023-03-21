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

    <div class="card">
        <div class="card-header table-bordered">
            <span style="font-size: 18px; color: #0077ff; font-weight: bold;">Dodaj użytkownika</span>

        </div>
    </div>

    <form method="POST" class="table-bordered" style="padding: 20px;">

        <div class="form-group">
            <label>Nazwa</label><br>
            <input type="text" class="form-control" name="username" placeholder="Nazwa użytkownika">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="email" placeholder="Email użytkownika">
        </div>

        <div class="form-group">
            <label>Hasło</label>
            <input type="password" class="form-control" name="password" placeholder="Hasło użytkownika">
        </div>


        <div style="text-align: center;">
            <button type="submit" class="btn btn-primary">Zapisz</button>
        </div>

    </form>


</div>
<!-- /.container-fluid -->

<%@ include file="footer.jsp" %>