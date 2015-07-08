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
</head>
<body>

	<div class="container">

		<div class="row">
			<div class="col-md-12">
				<h2>HRD Staff and Student Management</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				<form class="form-inline">
					<div class="form-group">
						<label for="search-text">Search By Name : </label> <input
							type="text" name="search-text" id="search-text"
							class="form-control" placeholder="Type here...">
					</div>
				</form>
			</div>

			<div class="col-md-4">
				<select class="form-control" name="class-name" id="class-name">

				</select>
			</div>

			<div class="col-md-4">
				<select class="form-control" id="status" name="status">
					<option value="">All Status</option>
					<option value="1">Active</option>
					<option value="0">Drop</option>
				</select>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12 table-responsive" id="student-info"></div>
		</div>

		<button class="btn btn-primary" data-toggle="modal"
			data-target="#bootstrapModal">Add New</button>

		<div class="modal fade" id="bootstrapModal" tabindex="-1"
			role="dialog" aria-labelledby="bootstrapModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Student
							Registration</h4>
					</div>

					<div class="modal-body">
						<div class="container">
							<div class="row">
								<div class="col-md-12 add">
									<form class="form-horizontal">

										<div class="form-group">
											<label for="txt-name" class="col-sm-2 control-label">Name</label>
											<div class="col-sm-3">
												<input type="text" class="form-control" id="txt-name"
													placeholder="Full Name">
											</div>
										</div>

										<div class="form-group">
											<label for="cbo-gender" class="col-sm-2 control-label">Gender</label>
											<div class="col-sm-3">
												<select name="cbo-gender" id="cbo-gender"
													class="form-control">
													<option value="1">Male</option>
													<option value="0">Female</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="txt-university" class="col-sm-2 control-label">University</label>
											<div class="col-sm-3">
												<input type="text" class="form-control" id="txt-university"
													placeholder="University Name">
											</div>
										</div>

										<div class="form-group">
											<label for="cbo-class" class="col-sm-2 control-label">Class</label>
											<div class="col-sm-3">
												<select name="cbo-class" id="cbo-class" class="form-control">
													<option value="PP">Phnom Penh</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="button" class="btn btn-default"
													id="add-new-student">Add</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/my-script.js"></script>
</body>
</html>