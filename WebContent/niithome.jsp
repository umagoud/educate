

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NIIT</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/favicon.ico">
    <link rel="stylesheet" href="http://www.niitstudent.com/india/StudentWeb/preloginfiles/css/normalize.css">
    <link rel="stylesheet" href="http://www.niitstudent.com/india/StudentWeb/preloginfiles/css/flexslider.css">
    <link type="text/css" rel="stylesheet" href="http://www.niitstudent.com/india/StudentWeb/preloginfiles/css/main.css">
    <script type="text/javascript" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/js/vendor/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="http://www.niitstudent.com/india/StudentWeb/PreloginFiles/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://www.niitstudent.com/india/StudentWeb/PreloginFiles/js/plugins.js"></script>
    <script type="text/javascript" src="http://www.niitstudent.com/india/StudentWeb/PreloginFiles/js/main.js"></script>

    <style type="text/css">
        .imageVideoclass { width : 305px; }
        .fade_bg_mask { height:100%; left:0; opacity:0.5; @filter:alpha(opacity=50); position:fixed; top:0; display:none; width:100%; z-index:500; }
        #fade_bg_main { left:0px; top:0px;}
        #fade_bg55 {    font-family:arial, 'lucida grande', tahoma, verdana, Verdana, sans-serif; margin-left: 30%;  margin-top : 20%; position : absolute; width:600px; z-index:501; }
        .close_btn { background:url('http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/feedback-close.png') no-repeat; width:42px; height:42px; position:absolute;  margin-top:-20px; cursor: pointer;   margin-left:580px; azimuth } 
        #fade_bg55 .popup { background:#95e1fe; border:2px solid #bdbcbd; padding:10px; color: #FFFFFF; font-family:Arial, Helvetica, sans-serif; font-style:italic; font-weight:normal; font-size:12px; }
        .loader_100 { padding:20px; }

    </style>
    <script type="text/javascript" >
        function openModalWindow(url, width, height) {
        window.open(url, 'mywin', "width=" + width + ",height=" + height + ",scrollbars=1;");
        }
    
        function Post(Url, StudentID, Values)
        {
            try
            {
                  form = document.createElement('form');
                  form.setAttribute('method', 'POST');
                  form.setAttribute('action', Url);
                  
                  myvar = document.createElement('input');
                  myvar.setAttribute('name', 'ID');
                  myvar.setAttribute('type', 'hidden');
                  myvar.setAttribute('value', Values);
                  form.appendChild(myvar);
                  
                  myvar1 = document.createElement('input');
                  myvar1.setAttribute('name', 'StudentID');
                  myvar1.setAttribute('type', 'hidden');
                  myvar1.setAttribute('value', StudentID);
                  form.appendChild(myvar1);
                  
                  document.body.appendChild(form);
                  form.submit();
             }
             catch(e){ }
             return;
        }
        function ClosePopup()
	    {
	        $("#fade_bg_main").hide();
	        $("#loginForm").hide();
	    }
	
	    function ShowLogin()
	    {
	        $("#fade_bg_main").hide();
	        $("#loginForm").show();
	    }
	
	    function validate()
        {
            $('.error').html("");
            $('.lbl_error').html("");
            var username = document.getElementById("ctl00_txt_user_id").value;
            var password = document.getElementById("ctl00_txt_password").value;
            if(username.length<=0)
            {
                $('.error').html("");
                $('.error').html('Enter your student ID as User Name.');
                return false;
            }
            if(password.length<=0)
            {
                $('.error').html("");
                $('.error').html('Enter your password.');
                return false;
            }
            if(!(username.length==13))
            {
                $('.error').html("");
                $('.error').html('Please enter a valid student ID.');   
                return false;    
            }
            if(!(username.charAt(0).toLowerCase()=="s"))
            {
                $('.error').html("");
                $('.error').html('Please enter a valid student ID. ');
                return false;    
            }
            $('.error').html("");
        }
    </script>
</head>
<body>
    <form name="aspnetForm" method="post" action="index.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTc1OTU2MzYzOGRkh/rJfky9Y2F237LtRzKco5VXu6g=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/India/StudentWeb/WebResource.axd?d=j3hofD4EZhp4VV31Vg_rDaQWRaBvTAmSS5OqDGw_42R2Fe02vCHZ9RWsSH9AHyJfQMLUqwwk1i3LSsIEmNKu8UDmQR01&amp;t=635655147895857128" type="text/javascript"></script>


<script src="/India/StudentWeb/ScriptResource.axd?d=nP7NS2fUn0Kb3wGNajHhW0kKptGEFRCY1XeZ9uP3UFqH99VtlBRDctMQSpuIJHcmEGxnAo6aLjFAuxQQQcLhFXz1EreiGlugd27Gq4QNusb5Izd7KVxD7_IlBAogDn20yh_WsAfe8qCi-hHrCvBGXM0p4UO9zvBZhFuqeEqLCxt8ZiQZ0&amp;t=1c3e9d63" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
//]]>
</script>

<script src="/India/StudentWeb/ScriptResource.axd?d=nI8Teb_IdKLXTBmk_RXxfyXMX8S2s__YVEcFjgMuxCXwgniR4KuJQ3pmL_aS-Ch6bpGvmS8bR56SCcnbyNEs2RvfH9PifQ6m1xR8OhrB5u3ripdE1UW8XrqKyF1_rLCqGEI1dvojhmicwzPS4JMBc4DVvnkLOyl73o1uMJl0Qie0gSAp0&amp;t=1c3e9d63" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var PageMethods = function() {
PageMethods.initializeBase(this);
this._timeout = 0;
this._userContext = null;
this._succeeded = null;
this._failed = null;
}
PageMethods.prototype = {
_get_path:function() {
 var p = this.get_path();
 if (p) return p;
 else return PageMethods._staticInstance.get_path();},
TopBanners:function(succeededCallback, failedCallback, userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
return this._invoke(this._get_path(), 'TopBanners',false,{},succeededCallback,failedCallback,userContext); },
StudentPlacements:function(succeededCallback, failedCallback, userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
return this._invoke(this._get_path(), 'StudentPlacements',false,{},succeededCallback,failedCallback,userContext); },
GetEvetsAnnoucementsXML:function(succeededCallback, failedCallback, userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
return this._invoke(this._get_path(), 'GetEvetsAnnoucementsXML',false,{},succeededCallback,failedCallback,userContext); }}
PageMethods.registerClass('PageMethods',Sys.Net.WebServiceProxy);
PageMethods._staticInstance = new PageMethods();
PageMethods.set_path = function(value) {
PageMethods._staticInstance.set_path(value); }
PageMethods.get_path = function() { 
/// <value type="String" mayBeNull="true">The service url.</value>
return PageMethods._staticInstance.get_path();}
PageMethods.set_timeout = function(value) {
PageMethods._staticInstance.set_timeout(value); }
PageMethods.get_timeout = function() { 
/// <value type="Number">The service timeout.</value>
return PageMethods._staticInstance.get_timeout(); }
PageMethods.set_defaultUserContext = function(value) { 
PageMethods._staticInstance.set_defaultUserContext(value); }
PageMethods.get_defaultUserContext = function() { 
/// <value mayBeNull="true">The service default user context.</value>
return PageMethods._staticInstance.get_defaultUserContext(); }
PageMethods.set_defaultSucceededCallback = function(value) { 
 PageMethods._staticInstance.set_defaultSucceededCallback(value); }
PageMethods.get_defaultSucceededCallback = function() { 
/// <value type="Function" mayBeNull="true">The service default succeeded callback.</value>
return PageMethods._staticInstance.get_defaultSucceededCallback(); }
PageMethods.set_defaultFailedCallback = function(value) { 
PageMethods._staticInstance.set_defaultFailedCallback(value); }
PageMethods.get_defaultFailedCallback = function() { 
/// <value type="Function" mayBeNull="true">The service default failed callback.</value>
return PageMethods._staticInstance.get_defaultFailedCallback(); }
PageMethods.set_path("/india/studentweb/index.aspx");
PageMethods.TopBanners= function(onSuccess,onFailed,userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
PageMethods._staticInstance.TopBanners(onSuccess,onFailed,userContext); }
PageMethods.StudentPlacements= function(onSuccess,onFailed,userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
PageMethods._staticInstance.StudentPlacements(onSuccess,onFailed,userContext); }
PageMethods.GetEvetsAnnoucementsXML= function(onSuccess,onFailed,userContext) {
/// <param name="succeededCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="failedCallback" type="Function" optional="true" mayBeNull="true"></param>
/// <param name="userContext" optional="true" mayBeNull="true"></param>
PageMethods._staticInstance.GetEvetsAnnoucementsXML(onSuccess,onFailed,userContext); }
//]]>
</script>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBgKN6vehBAK676ziAQK73p2sAQKs4eeMCgLfybKzCAKj8q34Dlt1HXGdbwGuUmlgSRPkxQTTD8cO" />
</div>
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', document.getElementById('aspnetForm'));
Sys.WebForms.PageRequestManager.getInstance()._updateControls(['tctl00$UpdatePanel_Error','tctl00$UpdatePanel_Login'], [], [], 90);
//]]>
</script>

        <input name="ctl00$hdn_BU" type="hidden" id="ctl00_hdn_BU" value="1" />
        <div id="fade_bg_main" style="display: none;">
            <div id="fade_bg55">
                <div class="close_btn" onclick="ClosePopup();">
                </div>
                <div class="popup" id='popup_address'>
                    <div class="loader_100" id="pop_content">
                    </div>
                </div>
            </div>
        </div>
        <div id="fb-root">
        </div>
        <!--[if  IE]>
        <style>
            .homePageboxSlider .flex-control-paging li a{
	            background:#CCC;	
	        }
        </style>          
        <![endif]-->
        <!-- Add your site or application content here -->
        <div style="left: 0px; top: 0px;">
            <div id="loginForm" class="UserLoginPage" style="margin-left: 40%; margin-top: 20%;
                position: absolute; display: none; z-index: 99999;">
                <div style="background: url('http://www.niitstudent.com/india/StudentWeb/PreloginFiles/img/feedback-close.png') no-repeat; width: 42px;
                    height: 42px; position: absolute; margin-top: -14px; margin-left: 300px; margin-top: -20px;
                    cursor: pointer; azimuth" onclick="ClosePopup();">
                </div>
                <div class="loginText">
                    User Login</div>
                <div class="bottomLoginWrapper" style="text-align: left">
                    <div  style=" margin-left:auto; margin-right:auto; text-align:center;">
                    <div id="ctl00_UpdateProcess" style="display:none;">
	
                            <img src="http://www.niitstudent.com/india/StudentWeb/PreloginFiles/img/loader.gif" alt="progress" />
                        
</div>
                    </div>
                    <p style="margin-left: 7px;">
                        User Name</p>
                    <input name="ctl00$txt_user_id" type="text" maxlength="13" id="ctl00_txt_user_id" title="Enter your Student ID" class="login-text" />
                    <p style="margin-left: 7px; text-transform :none;"><i>(Enter your Student ID as User Name)</i></p>
                    <p style="margin-left: 7px;">
                        Password</p>
                    <input name="ctl00$txt_password" type="password" maxlength="10" id="ctl00_txt_password" title="Enter Password" class="login-text" />
                    <div id="ctl00_UpdatePanel_Error">
	
                            <span id="ctl00_lbl_error" class="lbl_error"></span>
                        
</div>
                    <div class="error">
                    </div>
                </div>
                <div class="forgetPassword" style="text-align: left">
                    <div class="forgetPasswordLeft">
                        <a href="http://www.niitstudent.com/india/StudentWeb/SignUp.aspx" target="_blank">New User?</a><br />
                        <a href="javascript:void(0);" onclick="fnOpenLink('http://www.niitstudent.com/india/StudentWeb/ForgotPassword.aspx', '_blank',402, 525);">Forget Password?</a><br />
                        <a href="http://www.niitstudent.com/india/StudentWeb/QuickLinks/MyInformationSessionLess.aspx?content=ILSTroubleSignUp&Page=Trouble%20Signing%20Up"
                            target="_blank">Trouble Signing Up?</a>
                    </div>
                    <div>
                        <div id="ctl00_UpdatePanel_Login">
	
                                <input type="submit" name="ctl00$iBtnLogin" value="Login" onclick="return validate();" id="ctl00_iBtnLogin" class="forgetPasswordRight" />
                            
</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="master">
                <div class="topNavWrapper">
                    <a href="http://www.niitstudent.com/india/StudentWeb/index.aspx"><img alt="niitcloudcampus" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/niit-cloud-campus-logo.png" alt="" class="niitLogo"></a>
                    <div class="loginWrap">
                        <div class="login">
                            <a href="#" title="Click here to login" onclick="ShowLogin();">login</a></div>
                        <a href="http://www.facebook.com/niit4u" target="_blank">
                            <img alt="fblogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-Fb-icon.png"></a>
                        <a href="https://twitter.com/NIITLtd" target="_blank">
                            <img alt="twitterlogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-twit-icon.png"></a>
                        <a href="http://www.youtube.com/niitcareers" target="_blank">
                            <img alt="youtubelogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-you-tube-icon.png"></a>
                    </div>
                </div>
                <div class="mainMenu">
                    <ul>
                        <li><a href="http://www.niit.com" target="_blank">about us</a></li>
                        <li><a href="http://www.niitcloudcampus.com/Program.aspx" target="_blank">Programes
                            offered</a></li>
                        <li><a href="http://www.niit.com/newsandevents/Pages/NIITintheNews.aspx" target="_blank">
                            niit in the news</a></li>
                        <li><a href="http://www.niitstudent.com/india/StudentWeb/PreLoginAcademicPolicy.aspx">Student Academic Policy</a></li>
                        <li><a href="#">Academic zone</a>
                            <div class="dropDownWrapper">
                            <ul>
                                <li><a href="http://www.niitstudent.com/india/studentweb/CCS%20manuals/credit/Credit%20based%20Academic%20System%20V1%200.htm"
                                    target="_blank">Credit Based Academic System</a></li>
                            </ul>
                            </div>
                        </li>
                        <li><a href="http://www.niitstudent.com/india/StudentWeb/PreLoginContactUs.aspx" >Contact Us</a></li>
                    </ul>
                </div>
                <div class="contentWrapper" style="height: 100%; background-color : #FFFFFF;">
                    

    <script type="text/javascript" language="javascript">
        var currentdiv = 1;
        var totatdiv = 0;
        $(document).ready(function () {
            BindData();
        });

        function VideoImageClick(obj) {
            var highlightdiv = $(obj).parent('.divclass');
            var id = $(highlightdiv).attr('id');
            var var1 = id.split('_');
            currentdiv = var1[1];
            $(highlightdiv).prevAll('.divclass').css('background-color', '#fff');
            $(highlightdiv).nextAll('.divclass').css('background-color', '#fff');
            $(obj).parent('.divclass').css('background-color', '#ccc');
            var url = $(obj).attr('alt');
            VideoLoad(url);
        }
       function BindData() {
            $.ajax({
                type: "GET",
                url: "DataFiles/ILS/ILSVideoGallery.xml",
                dataType: "xml",
                success: function (xml) {
                    $(xml).find('NewDataSet').each(function () {
                                                                                                var starttable = '<table><tr>';
                        $('#divImageContent').append(starttable);
                        var count = 1;
                        $(xml).find("ILSVideoGallery").each(function () {
                                                                                                                    var url = $(this).find('VideoURL').text().replace(/^\s+|\s+$/g, '');
                                var screenshot = $(this).find('VideoPreviewImageURL').text().replace(/^\s+|\s+$/g, '');
                                var id = "div_" + count;
                                var var1 = "VideoImageClick(this)";
                                var divimage = '<td><div id="' + id + '" class="divclass"><img class="imageclass" src="' + screenshot + '" onclick="' + var1 + '" alt="' + url + '"/></div></td>';
                                $('#divImageContent').append(divimage);
                                count = count + 1;
                                totatdiv = count;
                            });
                        });
                                                                                                var endtable = '</tr></table>';
                        $('#divImageContent').append(endtable);
                }
            });
        }


        function GoToPreviousDiv() {
            if (currentdiv == 1) {
                return false;
            }
            else {
                if (currentdiv == 2) {
                    $('#divImageContent').scrollLeft(0);
                }
                else {
                    $('#divImageContent').scrollLeft(currentdiv * 25);
                }
                currentdiv = --currentdiv;
                var divid = '#div_' + currentdiv;
                for (i = 1; i <= totatdiv; i++) {
                    var id = '#div_' + i;
                    $(id).css('background-color', '#fff');
                }
                $(divid).css('background-color', '#ccc');
            }
        }
        function GoToNextDiv() {
            $('#divImageContent').scrollLeft(currentdiv * 60);
            if (currentdiv == (totatdiv - 1)) {
                return false;
            }
            else {
                currentdiv = ++currentdiv;
                var divid = '#div_' + currentdiv;
                for (i = 1; i <= totatdiv; i++) {
                    var id = '#div_' + i;
                    $(id).css('background-color', '#fff');
                }
                $(divid).css('background-color', '#ccc');
            }
        }
        function VideoLoad(strVal) {
            $('#divclose').css('display', 'block');
            $('#videoListArea').hide();
            document.getElementById('divPopupVideo').innerHTML = "<iframe style='width:100%;' src='" + strVal + "' frameborder='0' allowfullscreen></iframe>";
        }
        function CloseVideo() {
            $('#divclose').css('display', 'none');
            $('#videoListArea').show();
            document.getElementById('divPopupVideo').innerHTML = "";
            screenshot = 'PreloginFiles/img/cfo_poster3.jpg';
            var var1 = "PlayFirstVideo(this);";
            var url = "https://www.youtube.com/embed/90CB2AwDSBs?&amp;autoplay=1&amp;rel=0";
            var image = '<img class="imageVideoclass" src="' + screenshot + '" onclick="' + var1 + '" alt="' + url + '"/>';
            $('#divPopupVideo').append(image);
        }
        
        function PlayFirstVideo(obj) {
            var url = $(obj).attr('alt');
            VideoLoad(url);
        }

        function ZoomIn(obj) {
            $(obj).width($(obj).width() + 5);
        }

        function ZoomOut(obj) {
            $(obj).width($(obj).width() - 5);
        }
    </script>

    <script type="text/javascript">
        $(window).load(function(){
            $('.homePageboxSlider').flexslider({
                animation: "slide",
		        directionNav:false,
		        slideshow:true
            });
        });
    </script>

    <script type="text/javascript">
	    $(document).ready(function() {
	        $("#TopBanners").html("<img src='preloginfiles/img/TopBanner/Slide8.jpg'></li>");
		$("#EventsNotification").html("<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>");
		
		var PageName = $("#" + "ctl00_ContentPlaceHolder1_hdn_PageName").attr("value");
		
		$(".fancybox").fancybox({
			autoSize:false,
			type : 'iframe',
			width : '350',
			height : '335',
			padding: 0
			});
		
		//This code is for Loading Banners
		$.ajax({
                type: "POST",
                url: PageName + "/TopBanners",
                async : true,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    TopBanners(msg.d);
                }
        });
        
        //This code is for Loading Palacement marquee
		$.ajax({
                type: "POST",
                url: PageName + "/StudentPlacements",
                async : true,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    StudentPlacements(msg.d);
                }
        });
        
        //This code is for Event Notification
        $.ajax({
                type: "POST",
                 url: PageName + "/GetEvetsAnnoucementsXML",
                //url: "http://dcw.niit.co.in/CloudNSQABuild/India/NSCloudCampus/CloudWebService.asmx/GetEvetsAnnoucementsXML",
                //url: "http://localhost/CloudCampus/CloudWebService.asmx/GetEvetsAnnoucementsXML",
                data : "{'pData': 'BULLETINDATA'}",
                async : true,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function(msg) {
                    $("#EventsNotification").html(msg.d.replace("<ul>","").replace("</ul>",""));
                    $('.greenSlider').flexslider({
                        animation: "slide",
		                directionNav:false,
		                slideshow:true,
		                controlNav: false
                    });
                },
                error : function(result){ 
                    
                    $("#EventsNotification").html("Oops  Something went wrong.!!!");
                }
        });
        
        //region to fetch StudentTestimonials related data.
                $.ajax({
            type: "GET",
            url: "DataFiles/ILS/ILSStudentTestimonial.xml",
            dataType: "xml",
            success: function (xml) 
                {
                    $('#StudentTestimonials').html("");    
                    $(xml).find("NewDataSet").each(function () {
                        var count = 1;
                        $(xml).find("ILSStudentTestimonial").each(function () {
                            var Name = $(this).find('StudentName').text()
                            var DisplayPicture = $(this).find('TestimonialImageURL').text()
                            var ShortText = $(this).find('BriefDescription').text()
                            var LongText = $(this).find('DescriptiveDescription').text()
                            var Html = "<li id='slidertestimonial_" + count.toString() + "'><div class='niitStudents'><div class='displayPix'><img style='height:110px; width:110px;' src='" + DisplayPicture + "' alt='" + Name + "' />"
                            Html  = Html + "</div><div class='paragraph'><p>" + ShortText + "</p></div><div class='more'>more...<div class='moretext'>" + LongText + "</div></div></div></li>";
                            $('#StudentTestimonials').append(Html);    
                            count = count + 1;
                        });
                    });
                    $("#StudentTestimonials li").removeClass("active");
                                $("#StudentTestimonials li:first").addClass("active");
                    $(".more").on("click", function(){
                        $("#fade_bg_main").show();
                                    $("#pop_content").html($(this).find(".moretext").first().html());
                                });
                },
            error : function ( result)
            {
                alert(result.resultText);
            }
               
        });

        
        //region added for StudentTestimonials related Animations
        $("#prev_test").on("click", function(){
	        $("#fade_bg_main").hide();
	        var itemfound = false;
	        $("#StudentTestimonials li").each(function () {
	            if($(this).attr("class") == "active" && itemfound == false )
	            {
	                var getID = parseInt($(this).attr("id").replace("slidertestimonial_", ""));
	                var prevID = getID - 1;
	                if ($("#slidertestimonial_" + prevID).attr("id") != undefined) 
	                {
	                    $("#StudentTestimonials li").removeClass("active");
	                    $("#slidertestimonial_" + prevID).addClass("active");                
                    }
                    else
                    {
                        $("#StudentTestimonials li").removeClass("active");
	                    $("#StudentTestimonials li:last").addClass("active");
                    }
                    itemfound = true;
	            }
	        });
	    }); 
	    $("#next_test").on("click", function(){
	        var itemfound = false;
	        $("#fade_bg_main").hide();
	        $("#StudentTestimonials li").each(function () {
	            if($(this).attr("class") == "active" && itemfound == false)
	            {
	                var getID = parseInt($(this).attr("id").replace("slidertestimonial_", ""));
	                var nextID = getID + 1;
	                if ($("#slidertestimonial_" + nextID).attr("id") != undefined) 
	                {
                        $("#StudentTestimonials li").removeClass("active");
	                    $("#slidertestimonial_" + nextID).addClass("active");
                    }
                    else
                    {
                        $("#StudentTestimonials li").removeClass("active");
	                    $("#StudentTestimonials li:first").addClass("active");
                    }
                    itemfound = true;
	            }
	        });
	    });
	    
	   
	    $(".more").on("click", function(){
	        
	       
	        $("#fade_bg_main").show();
	        $("#pop_content").html($(this).find(".moretext").first().html());
	    });
	});

	
	function TopBanners(strXml) 
                {
                    try
                    {
        var xmlDOM = $.parseXML(strXml);
        var items = $(xmlDOM).find('NewDataSet ILSTopBanners');
        $("#TopBanners").html("");
        $.each(items, function (key, val) {
            var SNo = $(this).find("SNo").text();
            var BannerTitle = $(this).find("Title").text();
            var ImgSource = $(this).find("BannerImageURL").text();
            if (SNo == "0") {
                //$("#TopBanners").append("<li><img alt='" + BannerTitle +"' alt='" + BannerTitle +"' src='" + ImgSource + "' onclick='window.open(\"http://www.niitcloudcampus.com/nitat2015/index.aspx?siteId=niitstudenthomepage&adUnit=banner&technology=&referrer=undefined\");'></li>");
                //  $("#TopBanners").append("<li style='cursor:pointer;'><img alt='" + BannerTitle + "' alt='" + BannerTitle + "' src='" + ImgSource + "' onclick='window.open(\"http://digitalmarketing.niitcloudcampus.com/index.aspx?SiteId=sit1&AdUnit=adunit1&Technology=tech1&Utm_Source=niitstudent&Utm_medium=banner&Utm_Campaign=campig\");'></li>");
                $("#TopBanners").append("<li><img alt='" + BannerTitle + "' alt='" + BannerTitle + "' src='" + ImgSource + "' onclick=''></li>");
            }
            else {
                //$("#TopBanners").append("<li><img alt='" + BannerTitle +"' alt='" + BannerTitle +"' src='" + ImgSource + "' width='980' height='331' usemap='#Map'><map name='Map'><area shape='rect' coords='708,248,825,284' Target='_search' href='https://www.youtube.com/watch?v=90CB2AwDSBs&feature=youtu.be&spfreload=10?&amp;autoplay=1&amp;rel=0'></map></li>");
            //    $("#TopBanners").append("<li style='cursor:pointer;'><img alt='" + BannerTitle + "' alt='" + BannerTitle + "' src='" + ImgSource + "' onclick='window.open(\"http://digitalmarketing.niitcloudcampus.com/index.aspx?SiteId=sit1&AdUnit=adunit1&Technology=tech1&Utm_Source=niitstudent&Utm_medium=banner&Utm_Campaign=campig\");'></li>");
                $("#TopBanners").append("<li><img alt='" + BannerTitle + "' alt='" + BannerTitle + "' src='" + ImgSource + "' onclick=''></li>");
            }
            
        });
                                
                                $('.homePageboxSlider').flexslider({
        animation: "slide",
                                directionNav:false,
                                slideshow:true
                                });
        }
        catch(e){}
                }

	
	function StudentPlacements(strXml) 
	{
	    try
	    {
        var xmlDOM = $.parseXML(strXml);
        var items = $(xmlDOM).find('NewDataSet ILSStudentPlacements');
        $("#StudentPlacements").html("");
        $.each(items, function (key, val) {
            var PlacementText = $(this).find("Text").text();
            $("#StudentPlacements").append(PlacementText + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" );
        });
        }
        catch(e){}
	}
	function openModalWindow(url, width, height) {
        window.open(url, 'mywin', "width=" + width + ",height=" + height + ",scrollbars=1;");
    }
    
    
    </script>

    <script type="text/javascript">
            (function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));

    </script>

    <input type="hidden" name="ctl00$ContentPlaceHolder1$hdn_PageName" id="ctl00_ContentPlaceHolder1_hdn_PageName" value="http://www.niitstudent.com/india/studentweb/index.aspx" />
    <div class="contentWrapper" style="height: 338px;">
        <div class="homePageboxSlider">
            <div class="flexslider">
                <ul class="slides" id="TopBanners">
                    <li>
                        <img src="preloginfiles/img/loginBanner1.png"></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="contentWrapper">
        <div class="leftOneSlider">
            <div class="transparentFacebook">
                Student's Speak</div>
            <ul class="slidertestimonial" id="StudentTestimonials">
            </ul>
            <div class="controls">
                <div id="prev_test" style="float: left; cursor: pointer; margin: 4px;" title="Click to View Previous Testimonal">
                    <img src="PreloginFiles/img/TestimonialImages/previous.jpg" alt="previous" /></div>
                <div id="next_test" title="Click to View Next Testimonal" style="float: right; cursor: pointer;
                    margin: 4px;">
                    <img src="PreloginFiles/img/TestimonialImages/next.jpg" alt="next" /></div>
            </div>
        </div>
        <div class="leftSecondSlider">
            <div class="transparentFacebook">
                facebook</div>
            <div style="background-color: White;">
                <div class="fb-like-box" data-href="https://www.facebook.com/NIIT4u" data-width="327"
                    data-height="175" data-colorscheme="light" data-show-faces="true" data-header="false"
                    data-stream="false" data-show-border="false">
                </div>
            </div>
        </div>
        <div class="leftThirdSlider">
            <div>
                <div id="divclose" style="position: absolute; display: none; margin-left: 290px;
                    margin-top: -9px;">
                    <img title="Close" style="cursor: pointer;" onclick="CloseVideo();" src="PreloginFiles/img/close_icn1.png" />
                </div>
                <div id="divPopupVideo" style="text-align: center;">
                    <img class="imageVideoclass" src="PreloginFiles/img/cfo_poster3.jpg" onclick="PlayFirstVideo(this);"
                        alt="https://www.youtube.com/embed/90CB2AwDSBs?&amp;autoplay=1&amp;rel=0" />
                </div>
            </div>
            <div style="text-align: right;" id="videoListArea">
                <div style="padding-left: 1px;">
                    <table style="width: 100%; float: left;">
                        <tr>
                            <td>
                                <div style="text-align: center; cursor: pointer;">
                                    <img onclick="GoToPreviousDiv();" src="PreloginFiles/img/TestimonialImages/prev.png" />
                                </div>
                            </td>
                            <td>
                                <div id="divImageContent" style="width: 255px; cursor: pointer; overflow: hidden;
                                    text-align: right;">
                                </div>
                            </td>
                            <td>
                                <div style="text-align: center; cursor: pointer;">
                                    <img onclick="GoToNextDiv();" src="PreloginFiles/img/TestimonialImages/next.png" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="contentWrapper containerGreenBg">
        <div class="greenSlider">
            <div class="flexslider">
                <ul class="slides" id="EventsNotification">
                </ul>
            </div>
        </div>
    </div>
    <div class="contentWrapper containerWhiteBg">
        <marquee id="StudentPlacements" onmouseover="this.stop()" onmouseout="this.start()">Placement marquee</marquee>
    </div>

                </div>
                <div class="contentWrapper">     
                    <div class="container">
                    <div class="footerMargin">
                        <div class="loginLeftFooter">
                            Copyright @ 2013 NIIT Ltd. &nbsp; All trademarks acknowledged.
                        </div>
                        <div class="loginRightFooter">
                            <a href="http://www.facebook.com/niit4u" target="_blank">
                                <img alt="fblogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-Fb-icon.png"></a>
                            <a href="https://twitter.com/NIITLtd" target="_blank">
                                <img alt="twitterlogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-twit-icon.png"></a>
                            <a href="http://www.youtube.com/niitcareers" target="_blank">
                                <img alt="youtubelogo" class="imagrMargin" src="http://www.niitstudent.com/india/StudentWeb/preloginfiles/img/login-you-tube-icon.png"></a>
                        </div>
                    </div>
                    </div>
                </div>
                
            </div>
        </div>
        <script type="text/javascript">
	        $(document).ready(function() {
		    //This code is for showing DropDown
		        $(".mainMenu ul li").on("click" , function(){
		            $(this).find(".dropDownWrapper").first().slideToggle('slow');
		        });
		    });
		    
		    function fnOpenLink(pUrl, pTarget, pHeight, pWidth) 
            {
		        window.open(pUrl, pTarget, "scrollbars=no, resizable=no, menubars=no, width=" + pWidth + ", height=" + pHeight);
		    }  
        </script>		
		
    

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":null,"displayAfter":500,"dynamicLayout":true}, null, null, $get("ctl00_UpdateProcess"));
});
//]]>
</script>
</form>
</body>
</html>
