<html lang="en">
  <head>
    <title>login</title>
    <script type="text/javascript" src="https://www.bville.org/protected/ocm_cfscripts/cfform.js"></script>
    <script type="text/javascript" src="https://www.bville.org/protected/ocm_cfscripts/masks.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.6.2/modernizr.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200i,300,400,700,900" rel="stylesheet"> 
    <link href="https://www.cnyric.org/global/styles/tempEditStyles2021.css" rel="stylesheet" type="text/css">

    <!-- jQuery library (served from Google) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="https://www.cnyric.org/global/mobileMenu/dist/jquery.slicknav.js"></script>

    <script type="text/javascript">
      $(window).load(function(){
	    $('#menu').slicknav();
      });
    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-121451165-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-43118494-1');
    </script>


    <script type="text/javascript">/* <![CDATA[ */
	    if (window.ColdFusion) ColdFusion.required['UserLogin']=true;
    /* ]]> */
    </script>
    <script type="text/javascript">/* <![CDATA[ */
	    if (window.ColdFusion) ColdFusion.required['UserPassword']=true;
      /* ]]> */
    </script>
    <script type="text/javascript">
    <!--
        _CF_checkLoginForm = function(_CF_this)
        {
            //reset on submit
            _CF_error_exists = false;
            _CF_error_messages = new Array();
            _CF_error_fields = new Object();
            _CF_FirstErrorField = null;

            //form element UserLogin required check
            if( !_CF_hasValue(_CF_this['UserLogin'], "TEXT", false ) )
            {
                _CF_onError(_CF_this, "UserLogin", _CF_this['UserLogin'].value, "Please enter a username.");
                _CF_error_exists = true;
            }

            //form element UserPassword required check
            if( !_CF_hasValue(_CF_this['UserPassword'], "PASSWORD", false ) )
            {
                _CF_onError(_CF_this, "UserPassword", _CF_this['UserPassword'].value, "Please enter a password.");
                _CF_error_exists = true;
            }


            //display error messages and return success
            if( _CF_error_exists )
            {
                if( _CF_error_messages.length > 0 )
                {
                    // show alert() message
                    _CF_onErrorAlert(_CF_error_messages);
                    // set focus to first form error, if the field supports js focus().
                    if( _CF_this[_CF_FirstErrorField].type == "text" )
                    { _CF_this[_CF_FirstErrorField].focus(); }

                 }
                return false;
            }else {
                return true;
            }
        }
    //-->
    </script>
  </head>
  <body>
    <form name="LoginForm" id="LoginForm" action="https://www.bville.org/protected/teditpage.cfm" method="POST" onsubmit="return _CF_checkLoginForm(this)">
		  <INPUT TYPE="Hidden" NAME="UserLogin_required" aria-label="UserLogin_required">
		  <INPUT TYPE="Hidden" NAME="UserPassword_required" aria-label="UserPassword_required">	
		  <div style="background-color: #F8F8F8; width: 450px; margin: 25px auto; padding: 0px 40px; border: 1px solid #E3E3E3;">
			  <div style="text-align: center;">  
				  <img src="https://www.cnyric.org/images/tempEdit/logo_tempedit_login.png" style="margin-top: 45px;  margin-bottom: 30px;" width="137px">
			  </div>
			  <div>
				  <label for="UserLogin" class="topformLabel">Username</label>
			  </div>
			  <div>
				  <input name="UserLogin" type="text" maxlength="100"  class="gl_textbox"  id="UserLogin"  size="45"  /> 
			  </div>
			  <br>
			  <div>
				  <label for="UserPassword" class="topformLabel">Password</label>
			  </div>
			  <div>
				  <input name="UserPassword" type="password" maxlength="100"  class="gl_textbox"  id="UserPassword"  size="45"  /> 
			  </div>
			  <div align="right">
				  <input type="submit" class="primaryButtonBlue" name="Submit" value="Log In">
			  </div>
		  </div>
	  </form>
  </body>
</html>
