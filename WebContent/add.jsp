<%@ include file="header.jsp" %>
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
                        <label for="txt-university" class="col-sm-2 control-label">Name</label>
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
                            <button type="submit" class="btn btn-default">Add</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<%@ include file="footer.jsp" %>