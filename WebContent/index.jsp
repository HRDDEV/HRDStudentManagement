<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cheth Sovichea - Web Homework #20</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/my-script.js"></script>
</head>

<body>

	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h2>HRD Staff and Student Management</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<form class="form-inline">
					<div class="form-group">
						<label>Search by name : </label> <input type="text"
							name="search-text" id="search-text" class="form-control"
							placeholder="Search here..." />
					</div>
				</form>
				<select class="form-control" name="class-name" id="class-name">

				</select> <select class="form-control" id="status" name="status">
					<option value="">All Status</option>
					<option value="1">Active</option>
					<option value="0">Drop</option>
				</select>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 table-responsive" id="student-info"></div>
		</div>



	</div>

</body>
</html>