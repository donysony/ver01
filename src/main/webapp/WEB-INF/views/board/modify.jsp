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
                            <form role="form" action="/board/modify" method="post">
                                <div class="form-group">
                                    <label>Bno</label><input class="form-control" name="bno" value='<c:out value="${board.bno}"/>' readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>Title</label><input class="form-control" name="title" value='<c:out value="${board.title}"/>'>
                                </div>
                                <div class="form-group">
                                    <label>Text area</label><textarea class="form-control" rows="3" name="content" ><c:out value="${board.content}"/></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Writer</label><input class="form-control" name="writer" value='<c:out value="${board.writer}"/>' readonly="readonly">
                                </div>
                                <div class="form-group">
                                    <label>RegDate</label><input class="form-control" name="regdate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"/>' readonly="readonly">
                                <div class="form-group">
                                    <label>Update Date</label><input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}"/>' readonly="readonly">
                                </div>
                                </div>
                                <button type="submit" data-oper='modify' class="btn btn-primary">Modify</button>
                                <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
                                <button type="submit" data-oper='list' class="btn btn-info">List</button>

                            </form>
                        </div> <!--end card-body -->
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<script type="text/javascript">
$(document).ready(function(){
    let formObj = $("form");
    $('button').on("click", function(e){
        e.preventDefault(); //form이 기본으로 submit되는 것을 막음

        let operation = $(this).data("oper");

        console.log(operation);

        if(operation === 'remove'){
            formObj.attr("action","/board/remove");
        }else if(operation === 'list'){
            //move to list
            self.location ="/board/list";
            return;
        }
        formObj.submit();
    });
});
</script>
<%@ include file="../includes/footer.jsp"%>