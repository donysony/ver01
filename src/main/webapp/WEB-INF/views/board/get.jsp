<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Board Read</h1>


                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Board Read Page</h6>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                            <label>Bno</label> <input class="form-control" name='bno' value='<c:out value="${board.bno}"/>' readonly="readonly">
                            </div>
                            <div class="form-group">
                            <label>Title</label> <input class="form-control" name='title' value='<c:out value="${board.title}"/>' readonly="readonly">
                            </div>
                            <div class="form-group">
                            <label>Text area</label> <input class="form-control" name='content' row="3" value='<c:out value="${board.content}"/>' readonly="readonly">
                            </div>
                            <div class="form-group">
                            <label>Writer</label> <input class="form-control" name='writer' value='<c:out value="${board.writer}"/>' readonly="readonly">
                            </div>
                            <div class="form-group">
                            <button data-oper='modify' class="btn btn-outline-secondary" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">Modify</button>
                            <button data-oper='list' class="btn btn-primary" onclick="location.href='/board/list'">List</button>
                            </div>
                        </div> <!--end card-body -->
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<%@ include file="../includes/footer.jsp"%>