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
                            <button type="button" data-oper='modify' class="btn btn-outline-secondary" >Modify</button>
                            <button type="button" data-oper='list' class="btn btn-primary" >List</button>
                            </div>
                            <form id='operForm' action="/board/modify" method="get">
                                <input type='hidden' id='bno' name='bno' value='<c:out value="${board.bno}"/>'/>
                            </form>
                        </div> <!--end card-body -->
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<script type="text/javascript">
    $(document).ready(function(){
        let operForm = $("#operForm");

        $("button[data-oper='modify']").on("click", function(e){
            console.log("modify 클릭");
            operForm.submit();
        });

        $("button[data-oper = 'list']").on("click", function(e){

            console.log("list 클릭");
            operForm.find("#bno").remove();
            operForm.attr("action", "/board/list");
            operForm.submit();
        });
/*
        $('button').on("click", function(e){
            let operation = $(this).data("oper");
            console.log(operation);

            if(operation === 'modify'){
            console.log(document.querySelector("#operForm"))
                operForm.submit();
            }else if(operation === 'list'){
                self.location="/board/list";
                return;
            }
        });
*/



    });
</script>
<%@ include file="../includes/footer.jsp"%>