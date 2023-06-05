<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
	<h1 class="h3 mb-0 text-gray-800">Board Modify</h1>
</div>
<div class="row">
	<div class="col">
		<form action="" method="post" id="modifyForm">
			<div class="form-group">
				<label for="title">Title</label> 
				<input type="text" class="form-control" id="title"	 name="title" value="${dto.title}">
			</div>			
			<div class="form-group">
				<label for="content">content</label>
				<textarea class="form-control" id="content"	rows="10" name="content">${dto.content}</textarea>
			</div>
			<div class="form-group">
				<label for="writer">Writer</label> 
				<input type="text" class="form-control" id="writer" name="writer" readonly value="${dto.writer}">
			</div>	
			<input type="hidden" name="bno" value="${dto.bno}" />
			<button type="submit" class="btn btn-info">수정</button>		
			<button type="button" class="btn btn-danger">삭제</button>		
			<button type="button" class="btn btn-secondary">목록</button>		
		</form>
	</div>
</div>
<div class="row mt-3">
	<div class="col">  
		<div class="card">
			<div class="card-header">
				<i class="fa fa-file"></i>
				파일첨부
			</div>
			<div class="card-body">
				<div class="form-group uploadDiv">
					<input type="file" name="uploadFile" id="uploadFile" multiple />
				</div>
				<div class="uploadResult">
					<ul></ul>
				</div>  
			</div>
		</div>   
	</div>  
</div>
<form action="" id="operForm">
	<input type="hidden" name="bno" value="${dto.bno}" />
	<input type="hidden" name="page" value="${cri.page}" />
	<input type="hidden" name="amount" value="${cri.amount}" /> 
	<input type="hidden" name="type" value="${cri.type}" />
	<input type="hidden" name="keyword" value="${cri.keyword}" />
</form>
<script> 
	const bno = ${dto.bno};
	const path = '${pageContext.request.requestURI}';
</script>
<script src="/resources/js/modify.js"></script> 
<script src="/resources/js/upload.js"></script> 
<%@ include file="../include/footer.jsp"%>