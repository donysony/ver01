<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>

<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Board Register</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Board Register</h6>
                        </div>
                        <div class="card-body">

                            <form role="form" action="/board/register" method="post">
                                <div class="form-group">
                                    <label>Title</label><input class="form-control" name="title">
                                <div class="form-group">
                                    <label>Text area</label><textarea class="form-control" rows="3" name="content"></textarea>
                                </div>
                                </div>
                                <div class="form-group">
                                    <label>Writer</label><input class="form-control" name="writer">
                                </div>
                                <button type="submit" class="btn btn-default">Submit Button</button>
                                <button type="reset" class="btn btn-default">Reset Button</button>

                            </form>

                        </div> <!--end card-body -->
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<%@ include file="../includes/footer.jsp"%>