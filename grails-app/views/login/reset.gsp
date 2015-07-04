<!DOCTYPE html>
<html lang="en-IN">
<head>
<meta charset="utf-8">
<title></title>
<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel='stylesheet'>
<style>
body{font-family: 'Ropa Sans', sans-serif; color:#666; font-size:25px; color:#333}
li,ul,body,input{margin:0; padding:0; list-style:none}
#login-form{width:200px; background:#FFF; margin:0 auto; margin-top:90px; border-radius:10px}
.form-header{display:table; clear:both}
.form-header label{display:block; cursor:pointer; z-index:999}
.form-header li{margin:0; line-height:60px; width:175px; text-align:center; background:#eee; font-size:18px; float:left; transition:all 600ms ease}

/*sectiop*/
.section-out{width:700px; float:left; transition:all 600ms ease}
.section-out:after{content:''; clear:both; display:table}
.section-out section{width:350px; float:left}

.login{padding:20px}
.ul-list{clear:both; display:table; width:100%}
.ul-list:after{content:''; clear:both; display:table}
.ul-list li{ margin:0 auto; margin-bottom:12px}
.input{background:#fff; transition:all 800ms; width:500px; border-radius:9px 0 0 9px; font-family: 'Ropa Sans', sans-serif; border:solid 1px #ccc; border-right:none; outline:none; color:#999; height:180px; line-height:180px; display:inline-block; padding-left:10px; font-size:50px}
.input,.login span.icon{vertical-align:top}
.login span.icon{width:500px; transition:all 800ms; text-align:center; color:#999; height:100px; border-radius:0 3px 3px 0; background:#e8e8e8; height:300px; line-height:300px; display:inline-block; border:solid 1px #ccc; border-left:none; font-size:50px}
.input:focus:invalid{border-color:red}
.input:focus:invalid+.icon{border-color:red}
.input:focus:valid{border-color:green}
.input:focus:valid+.icon{border-color:green}
#check{top:1px; position:relative}
.btn{border:none; outline:none; background:#0099CC; border-bottom:solid 4px #006699; font-family: 'Ropa Sans', sans-serif; margin:0 auto; display:block; height:40px; width:100%; padding:0 10px; border-radius:3px; font-size:20px; color:#FFF}

.social-login{padding:15px 20px; background:#f1f1f1; border-top:solid 2px #e8e8e8; text-align:right}  .social-login a{display:inline-block; height:75px; text-align:center; line-height:75px; width:75px; margin:0 3px; text-decoration:none; color:#FFFFFF}
.form a i.fa{line-height:100px}
.fb{background:#305891} .tw{background:#2ca8d2} .gp{background:#ce4d39} .in{background:#006699}
.remember a{text-decoration:none; color:#666}

.hide{display:none}

/*swich form*/
#login:checked~.section-out{margin-left:3px}
#login:checked~div .form-header li:nth-child(1){background:#e8e8e8}
</style>
</head>
<body>
<div id="login-form">

    <input type="radio" checked id="login" name="switch" class="hide">

    <div>
        <ul class="form-header">
            <li><label for="login"><i class="fa fa-lock"></i> RESET-PASSWORD<label for="login"></li>
        </ul>
    </div>
<section class="reset-password">
<div class="Reset">
<g:form controller="login" action="reset" method="post">
    <ul class="ul-list">
    <li><g:textField name="email" required="" placeholder="Your Email"/><span class="icon"><i class="fa fa-user"></i></span></li>
    <li><g:passwordField name="password" required="" placeholder="Password"/><span class="icon"><i class="fa fa-lock"></i></span></li>
    <li><g:submitButton name="submit" value="Submit" class="btn"/></li>
</ul>
</g:form>
</div>

    </div>


</body>
</html>