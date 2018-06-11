<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Register</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
        
</head>
<style type="text/css">
    

.largediv {
    
  

    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;

    margin: auto;
}

    .sect {
    margin-top: 120px;
    opacity: 0.5;
    filter: alpha(opacity=50); /* For IE8 and earlier */
}

.sect:hover {
    opacity: 1.0;
    filter: alpha(opacity=100); /* For IE8 and earlier */
}
.btn-file {
    position: relative;
    overflow: hidden;
}
.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
}

</style>
<body style=" background-image: url(&#39;3797636-beach-house-wallpaper.jpg&#39;); background-repeat: no-repeat; ">

  <!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark indigo">

    <!-- Navbar brand -->
    <a class="navbar-brand" href="#">HouseBuyAndRent</a>

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Add an advertisement</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Create Alert</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Notifications</a>
            </li>
        
            <li class="nav-item">
                <a class="nav-link glyphicon glyphicon-search" href="#">Search</a>
            </li>
            <!-- Dropdown -->
            <!-- <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li> -->
     

        </ul>
        <!-- Links -->

        <!-- Search form -->
        <!-- <form class="form-inline">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        </form> -->
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
<!-- Form register -->
<div class="col-md-6 largediv sect"  style="margin-left: 50%px; ">
    <div class="card">

        <!--Header-->
        <div class="header pt-3 blue lighten-3">

            <div class="row d-flex justify-content-start">
                <h3 class="deep-grey-text mt-3 mb-4 pb-1 mx-5" style="font-family: sans-serif;">Edit Profile</h3>
            </div>

        </div>
        
<!--        <script src="validation.js">
        </script>-->
<!-- <form action="HomePage" style="background-color: white; padding:100px 100px 100px 100px;">-->

        <form action="ChangePassword" style="background-color: white; padding:100px 100px 100px 100px;">
        
            <div class="md-form">
                <i class="fa fa-lock prefix grey-text"></i>
                <input name="password" type="password" id="orangeForm-pass" class="form-control" >
                <label for="orangeForm-pass">Old password</label>
            </div>

            <div class="md-form pb-3" style=" color: red;" >
                    
                <%

                    if( request.getParameter("error")!=null ){

                        out.print( request.getParameter("error") ) ;
                    }


                %>

             </div>
    
            <input type="text" name="e" id="e" hidden="" value="" />
            
            <div class="md-form">
                <i class="fa fa-lock prefix grey-text"></i>
                <input  name="conf" type="password" id="orangeForm-confpass" class="form-control" >
                <label for="orangeForm-pass">New password</label>
            </div>
            
            <div class="text-center">
            <button  name="btn1" type="submit" class="btn btn-unique btn-block z-depth-2 waves-effect waves-light" >Change Password</button>

            </div>
        </form>

            

    <form action="UpdateUserData" style="background-color: white; padding:100px 100px 100px 100px;" method="post" enctype="multipart/form-data">

    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <!--<input name="uname" type="text" value=<%= request.getAttribute("name") %> id="orangeForm-name" class="form-control"  >-->
        <!--=""-->
        <label for="orangeForm-name"><%= request.getAttribute("name") %></label>
    </div>
            
    <br> <br><br>
    
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input name="email" type="text" value=<%= request.getAttribute("email") %> id="orangeForm-email" class="form-control" required>
        <label for="orangeForm-email">Your email</label>
    </div>

    <div class="md-form" style="margin-left: 48px;">
        <!--<i class="fa fa-envelope prefix grey-text"></i>-->
        <input name="phone"type="text" value=<%= request.getAttribute("phone") %> id="orangeForm-phone" class="form-control" required>
        <label for="orangeForm-phone">Your phone number</label>
    </div>

       <div class="col-md-4">
            <span class="btn btn-default btn-file">
    Profile Photo <input type="file" name="pic" id="pic" accept=".jpg, .jpeg, .png" />
</span>
        </div>
    <br>
    <br>
    <div class="text-center">
        <button  name="btn2" type="submit" class="btn btn-unique btn-block z-depth-2 waves-effect waves-light" >Update Info</button>
        
    </div>

</form>
    
<!--    <div class="text-center">
        <button  name="btn3" type="submit" class="btn btn-unique btn-block z-depth-2 waves-effect waves-light" >Save</button>
        
    </div>-->
 <!--</form>-->
</div>
<!-- Form register -->


    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.js"></script>
    

    
</body>

</html>
