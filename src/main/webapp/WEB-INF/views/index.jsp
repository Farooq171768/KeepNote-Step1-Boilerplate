<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color:#e2e2e2">
    <div class="container ">
        <h1 class=" text-center text-primary">Keep Notes</h1>
        <div class="card border border-danger bg-warning">
        <form:form  class="offset-3" method="POST" action="saveNote">
            <div class="row mt-3">
                <div class="col-md-2">
                    <form:label path="noteId">Note_id</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="noteId" class="form-control" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-2">
                    <form:label path="noteTitle">Note_title</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="noteTitle" class="form-control" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-2">
                    <form:label path="noteContent">Note_content</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="noteContent" class="form-control" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-2">
                    <form:label path="noteStatus">Status</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="noteStatus" class="form-control" />
                </div>
            </div>
            <div class="row mt-3 text-center">
                <div class="col-md-4 offset-md-2">
                    <input type="submit" class="btn btn-primary" value="Save Note" />
                </div>
            </div>
        </form:form>
        </div>

        <hr class="mt-5 text-info" />
        <h2 class="text-danger">List of Notes:</h2>
        <table class="table table-bordered bg-info">
            <thead class="font-weight-bold">
                <tr>
                    <td>Id</td>
                    <td>Title</td>
                    <td>Content</td>
                    <td>Status</td>
                    <td>createdOn</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="notee" items="${notes}">
                    <tr>
                        <td>${notee.noteId}</td>
                        <td>${notee.noteTitle}</td>
                        <td>${notee.noteContent}</td>
                        <td>${notee.noteStatus}</td>
                        <td>${notee.createdAt}</td>
                        <td>
                            <form action="deleteNote" method="post">
                                <input type="hidden" id="noteId" name="noteId" value="${notee.noteId}" />
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
