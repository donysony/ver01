<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="../includes/header.jsp"%>



                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Board List</h1>


                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- <h6 class="m-0 font-weight-bold text-primary">Board List Page</h6> -->
                            Board List Page
                            <button type="button" onclick="location='/board/register'" class="btn btn-primary" >Register New Board</button>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>#번호</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>수정일</th>
                                            <th>조회수</th>
                                        </tr>
                                    </thead>


                                <c:forEach items="${list}" var="board" >

                                    <tr>
                                        <td><c:out value="${board.bno}"/></td>
                                        <td><a href='/board/get?bno=<c:out value="${board.bno}"/>'>
                                        <c:out value="${board.title}"/></a></td>
                                        <!--<td><a href='/board/get?bno=<c:out value="${board.bno}"/>' target='_blank'>
                                        <c:out value="${board.title}"/></a></td> 새창으로 열고싶을 경우-->
                                        <td><c:out value="${board.writer}"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate}"/></td>
                                        <td><c:out value="${board.view_cnt}"/></td>

                                    </tr>

                                </c:forEach>
                                </table>



                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                  <div class="modal-body">
                                    처리가 완료되었습니다.
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>
                                  </div>
                                </div>
                              </div>
                            </div>


                            </div>
                        </div> <!--end card-body -->
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<script type="text/javascript">
    $(document).ready(function(){

    let result = '<c:out value="${result}"/>';
    console.log(result);

    checkModal(result);
    /*javascript가 실행한 후에 history.state의 상태를 null로 변경*/
    history.replaceState({}, null, null);

    function checkModal(result){
    /*javascript의 모든 처리가 끝나게 되면 history에 쌓이는 상태는 모달창을 보여줄 필요가 없는 상태
    history.state : history에 쌓이는 상태를 의미  */
        if(result === '' || history.state){
            return;
        }
        if(parseInt(result) > 0) {
            $(".modal-body").html(
                "게시글 " + parseInt(result) + " 번이 등록되었습니다.");
        }
        /*모달창 열기*/
        $("#exampleModal").modal("show");
        const close_btn = document.querySelector(".btn-close")
        const close_btn2 = document.querySelector(".btn-secondary")

        /*모달 헤더에 있는 닫기버튼 클릭시*/
        close_btn.addEventListener("click", e =>{
        /*모달창 닫기*/
        $("#exampleModal").modal("hide");
        });

        /*모달 푸터에 있는 닫기버튼 클릭시*/
        close_btn2.addEventListener("click", e =>{
        /*모달창 닫기*/
        $("#exampleModal").modal("hide");
        });

    }


});

</script>
<%@ include file="../includes/footer.jsp"%>
