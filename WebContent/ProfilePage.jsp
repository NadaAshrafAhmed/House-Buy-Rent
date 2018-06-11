<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Profile</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
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
    margin-left:500px ; 
    margin-top: 120px;
    opacity: 0.5;
    filter: alpha(opacity=50); /* For IE8 and earlier */
}

.sect:hover {
    opacity: 1.0;
    filter: alpha(opacity=100); /* For IE8 and earlier */
}

.user {
  display: inline-block;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  margin-top: 100px;
  margin-left: 880px;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
}

</style>

<body style=" background-color: gray;">
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
  
<div class="col-md-4" style="margin-left: -25px; ">
<!--Card-->
<div class="card" style="padding-bottom: 300px;">

    <!--Card image-->
    
    <% 
        String s="" ;
        if( request.getAttribute("picpath").equals("") ){
            
            s="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20%282%29.jpg" ;
        } 
        else{
            s = request.getAttribute("picpath").toString() ;
            
            System.out.println(s) ;
        }
    %>
    
    <img class="img-fluid" src=<%= request.getAttribute("picpath").toString()%> alt=<%= request.getAttribute("picpath").toString()%>>

    <!--<div class="img-fluid" style=? background-image: url("E://fci//fourth year//first semester//Internet Applications//Project//HouseBuyAndRent//usersPics//monica.jpg"); background-repeat:no-repeat;?></div>-->
    
    <!--Card content-->
    <form action="EditProfile">
    <div class="card-body">
        <!--Title-->
        <h4 class="card-title" style="font-size: 200%"> <%= request.getAttribute("name") %> </h4> <br> <br>
        
       <h5 class="card-title" style="font-size: 140%">Email</h5>
        <!--Text-->
        <p class="card-text" style="font-size: 100%"> <%= request.getAttribute("email") %> </p>
          <!--Title-->
        <h5 class="card-title"style="font-size: 140%">Phone</h5>
        <!--Text-->
        <p class="card-text"style="font-size: 100%"> <%= request.getAttribute("phone") %> </p> <br><br>
       <button type="submit" class="btn btn-secondary btn-block z-depth-2 waves-effect waves-light">Edit</button>
    </div>
       </form>

</div>
<div>
<!--/.Card-->



















  
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
