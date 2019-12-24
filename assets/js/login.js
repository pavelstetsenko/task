function setCookie(cname,cvalue,exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
        c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
        }
    }
    return "";
}
$(document).ready(function() {
    
    
    $('#customControlInline').change(function(){
        if($('#customControlInline').prop('checked'))
            $('#customControlInline').attr('value',1);
        else
            $('#customControlInline').attr('value',0);
    });
	$('.login_btn').click(function(){
        if($('#username').val() == ''){
            $.notifyDefaults({
                type: 'danger',
                allow_dismiss: false
            });
            $.notify('Please enter username!');
        }
        else if($('#password').val() == ''){
            $.notifyDefaults({
                type: 'danger',
                allow_dismiss: false
            });
            $.notify('Please enter password!');
        }
        else{
            setCookie("username", $('#username').val(), 2);
            setCookie("password", $('#password').val(), 2);  
            if($('#customControlInline').prop('checked') == 1){
                setCookie("rem_username", $('#username').val(), 2);
                setCookie("rem_password", $('#password').val(), 2);    
            }    
            else{
                setCookie("rem_username", '', 2);
                setCookie("rem_password", '', 2);  
            }
            $.ajax ({
                url: 'http://localhost/simpletask/api/login.php',
                method: "POST",
                data: "username="+$('#username').val()+'&password='+$('#password').val(),
                dataType: "text",
                success: function (data) {
                    if(data == 'success')
                        window.location.href = "table.html";
                    else{
                        $.notifyDefaults({
                            type: 'danger',
                            allow_dismiss: false
                        });
                        $.notify('User information is incorrect. please try it again');
                    }

                }
            });
        }
    });
    $('#username').val(getCookie("rem_username"));
    $('#password').val(getCookie("rem_password"));
});
