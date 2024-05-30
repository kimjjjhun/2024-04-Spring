<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>exUpload</h1>

	<form action="/sample/exUploadPost" method="post"
		enctype="multipart/form-data">
		<div>
			<input type="file" name="files">
		</div>

		<div>
			<input type="file" name="files">
		</div>
		<div>
			<input type="file" name="files">
		</div>
		<div>
			<input type="file" name="files">
		</div>
		<div>
			<input type="file" name="files">
		</div>

		<div>
			<input type="submit" value="전송">
		</div>
	</form>
</body>
</html>