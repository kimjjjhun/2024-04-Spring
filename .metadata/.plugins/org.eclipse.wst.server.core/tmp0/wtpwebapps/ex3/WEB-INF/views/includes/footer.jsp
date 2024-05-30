<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<!-- Bootstrap -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>


	<!-- Metis Menu Plugin JavaScript -->
	<script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->

	<script
		src="/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script
		src="/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="/resources/dist/js/sb-admin-2.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(
				function() {
					$('#dataTables-example').DataTable({
						responsive : true
					});

					$(".sidebar-nav").attr("class",
							"sidebar-nav navbar-collapse collapse").attr(
							"aria-expanded", 'false').attr("sytle",
							"height:1px")
				});
	</script>



</body>
</html>