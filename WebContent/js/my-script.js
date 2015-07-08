$(document).ready(function () {
	/* Get value from Control */
    var keyword = $('#search-text').val(),
        className = $('#class-name').val(),
        status = $('#status').val();
    var studentInfo = $('div#student-info');
    
    /* Load list of Class Name to Combo Box */
    getClassList();
    
    /* Load data into Table */
    list();
    
    function list() {
        $.ajax({
            url: 'liststudent.hrd',
            method: 'POST',
            data: {
                stuName: keyword,
                className: className,
                status: status
            },
            success: function (data) {
                studentInfo.html(listDetail(data));
                $('img').click(function(){
                    changeStatus($(this));
                });
            }
        });
    }
    function listDetail(data) {
        var str = "";
        str += '<table class="table table-hover">' +
                    '<tr class="info">' +
                        '<th>ID</th>' +
                        '<th>Name</th>' +
                        '<th>Gender</th>' +
                        '<th>University</th>' +
                        '<th>Class</th>' +
                        '<th>Status</th>' +
                    '</tr>';
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                var statusImage = (data[i].status == 1) ? "active.png" : "drop.png";
                str += '<tr>' +
                            '<td>' + data[i].id + '</td>' +
                            '<td>' + data[i].name + '</td>' +
                            '<td>' + data[i].gender + '</td>' +
                            '<td>' + data[i].className + '</td>' +
                            '<td>' + data[i].university + '</td>' +
                            '<td>' +
                                 '<img src="images/' + statusImage + '" id="'+ data[i].id +'">' +
                            '</td>' +
                       '</tr>';
            }
        }
        else{
            str += '<tr>' +
                        '<td class="text-center" colspan="6">' +
                            '-- No Record --' +
                        '</td>' +
                   '</tr>';
        }
        str += '</table>';
        return str;
    }
    
    /* Load all class name into Class combo box */
    function getClassList(){
        var combobox = $('#class-name');
        $.ajax({
            url: 'classlist.hrd',
            method: 'POST',
            success: function(data){
                var str = "";
                str += '<option value="">All Class</option>';
                for (var i=0; i<data.length; i++){
                    str += '<option value="' + data[i] + '">' + data[i] + '</option>';
                }
                combobox.html(str);
            }
        });
    }
    
    /* Retrieve data on typing on Textbox */
    $('#search-text').keyup(function(){
        keyword = $('#search-text').val();
        list();
    });
    
    /* Filter Data in Table on select on Combox Box */
    $('#class-name, #status').change(function(){
        className = $('#class-name').val();
        status = $('#status').val();
        list();
    });    
    
    /*
     * Change img src then update status in DB
     */
    function changeStatus(img) {
        var src = img.attr('src');
        src = src.substr(src.lastIndexOf('/')+1);
        var status = (src != "active.png")?1:0;
        var id = img.attr('id');
        $.ajax({
            url: 'updatestudent.hrd',
            data: {
                id: id,
                status: status
            },
            success: function (data) {
                src = (src == "active.png") ? "drop.png" : "active.png";
                img.attr('src', 'images/' + src);
            }
        });
    }
    
    function addNewStudent(){
        var name = $('#txt-name').val(),
            gender = $('#cbo-gender').val(),
            university = $('#txt-university').val(),
            className = $('#cbo-class').val();
        $.ajax({
            url:'addstudent.hrd',
            method:'POST',
            data:{
                name: name,
                gender: gender,
                university: university,
                className: className
            },
            success:function(data){
                
            }
        });
    }
    $('#add-new-student').click(function(){
        addNewStudent();
    });
});