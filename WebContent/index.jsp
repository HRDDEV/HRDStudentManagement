<%@ include file="header.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Staff and Student Management</h2>
            </div>
        </div>
        <!-- Control -->
        <div class="row">
            <!-- Search Text -->
            <div class="col-md-4">
                <form class="form-inline">
                    <div class="form-group">
                        <label for="search-text">Search By Name : </label>
                        <input type="text" name="search-text" id="search-text" class="form-control" placeholder="Type here...">
                    </div>
                </form>
            </div>
            <!-- List of Class Name -->
            <div class="col-md-3">
                <select class="form-control" name="class-name" id="class-name">
                    <!-- Read from Ajax -->
                </select>
            </div>
            <!-- Status: Active OR Drop -->
            <div class="col-md-3">
                <select class="form-control" id="status" name="status">
                    <option value="">All Status</option>
                    <option value="1">Active</option>
                    <option value="0">Drop</option>
                </select>
            </div>
        </div>
        <!-- Table Student Information -->
        <div class="row">
            <div class="col-md-12 table-responsive" id="student-info">
                
            </div>
        </div>
        <!-- Trigger -->
        <button class="btn btn-primary" data-toggle="modal" data-target="#bootstrapModal">Add New</button>
        <!-- Modal -->
        <div class="modal fade" id="bootstrapModal" tabindex="-1" role="dialog" aria-labelledby="bootstrapModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Student Registration</h4>
                    </div>

                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 add">
                                    <form class="form-horizontal">
                                        <!-- Name -->
                                        <div class="form-group">
                                            <label for="txt-name" class="col-sm-2 control-label">Name</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="txt-name" placeholder="Full Name">
                                            </div>
                                        </div>
                                        <!-- Gender -->
                                        <div class="form-group">
                                            <label for="cbo-gender" class="col-sm-2 control-label">Gender</label>
                                            <div class="col-sm-3">
                                                <select name="cbo-gender" id="cbo-gender" class="form-control">
                                                    <option value="1">Male</option>
                                                    <option value="0">Female</option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- University -->
                                        <div class="form-group">
                                            <label for="txt-university" class="col-sm-2 control-label">University</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="txt-university" placeholder="University Name">
                                            </div>
                                        </div>
                                        <!-- Class -->
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
                                                <button type="button" class="btn btn-default" id="add-new-student">Add</button>
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
<%@ include file="footer.jsp" %>