<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
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
    margin-top: 120px;
    opacity: 0.5;
    filter: alpha(opacity=50); /* For IE8 and earlier */
}

.sect:hover {
    opacity: 1.0;
    filter: alpha(opacity=100); /* For IE8 and earlier */
}

</style>
<!--style=" background-image: url(&#39;3797636-beach-house-wallpaper.jpg&#39;); background-repeat: no-repeat; "!-->
<body style="background-color: gray;">

  







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
                <a class="nav-link" href="AddAdvertisementPage.html">Add an advertisement</a>
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
                
           

<!--Card-->
<!--Card-->
<%! String getUserInfo(String uname)throws ClassNotFoundException, SQLException
	{
		String info="";
		String url="jdbc:mysql://localhost:3306/housebuyandrent";
		String username="root";
		String password="root";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url, username, password) ;
		
		Statement stmt=con.createStatement() ;
		
		String q = "SELECT * FROM user where name='"+uname+"' ;" ;
		
		ResultSet res= stmt.executeQuery(q) ;
		
		
		while( res.next() ){
			
			String email= res.getString("email") ;
			String phone= res.getString("phone") ;
			info+="<p>Name: "+uname+"</p>\n"; 
			info+="<p>Email: "+email+"</p>\n";
			info+="<p>Phone Number: "+phone+"</p>\n";
		}
		
		stmt.close();
		con.close();
		return info;
	}
%>
<%! String viewCard(String title,String description,String picpath,int isSell,String uname,int i)throws ClassNotFoundException, SQLException
	{
		String x="For Rent:\n";
		if(isSell==1)
		{
			x="For Sell:\n";
		}
		description=x+description;
		String card="";
		card+="<div class='col-md-4' > \n";
		card+="<div class='card sect '> \n";
		
		//    <!--Card image-->
		card+="<img class='img-fluid' src='"+picpath+"' alt='Card image cap'> \n";
		
		//    <!--Card content-->
		card+="<div class='card-body'>\n";
		//       <!--Title-->
		card+="<h4 class='card-title'>"+title+"</h4>\n";
		//        <!--Text-->
		card+="<p class='card-text'>"+description+"</p>\n";
		card+="<a href='ViewAdvertisment?title="+title+"' class='btn btn-primary'>Show More</a>\n";
		card+="<a class='btn btn-primary' data-toggle='collapse' href='#collapseExample"+i+"' aria-expanded='false' aria-controls='collapseExample"+i+"'>\n";
		card+="Contact Info</a>\n";
			    
		card+="<div class='collapse' id='collapseExample"+i+"'>\n";
		card+="<p>"+getUserInfo(uname)+"</p>\n";
		card+="</div>\n";
		card+="</div>\n";
		
		card+="</div>\n";
		card+="</div>\n";
		return card;
	}
%>

<%
	String url="jdbc:mysql://localhost:3306/housebuyandrent";
	String username="root";
	String password="root";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url, username, password) ;

	String[] checkedIds = request.getParameterValues("radios");
	int sell=3;
	int rent=3;
	if(checkedIds!=null&&checkedIds.length==2)
	{
		sell=1;
		rent=0;
	}
	else if(checkedIds!=null&&checkedIds.length==1)
	{
		if(checkedIds[0].equals("sell"))
		{
			sell=1;
		}
		else
		{
			rent=0;
		}
	}
	
	Statement stmt=con.createStatement() ;
	
	String q="SELECT * FROM advertisment where (size >= '"+request.getParameter("sizefrom")+"' AND size <= '"+request.getParameter("sizeto")+"') OR (floor >= '"+request.getParameter("floor from")+"' AND floor <= '"+request.getParameter("floorto")+"') OR status = '"+request.getParameter("status")+"' OR type = '"+request.getParameter("type")+"' OR  isSell='"+sell+"' OR isSell ='"+rent+"' ;";
	System.out.println(q);
	ResultSet res= stmt.executeQuery(q) ;
	
	%>
	<div class="row">
	<% 
	int i=0;
	while( res.next() ){
		String title= res.getString("title") ;
		String description= res.getString("description") ;
		String picpath= title + "1.jpg";
		int isSell= res.getInt("isSell") ;
		String uname= res.getString("username") ;
		%>
		
		<%= viewCard(title,description,picpath,isSell,uname,i)%>
		
		<%
		i++;
	}
	%>
	</div>
	<% 
	stmt.close();
	con.close();

%>
<!-- 
<div class="row">
	<div class="col-md-4"> 
		<div class="card sect ">
		
		    <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20%282%29.jpg" alt="Card image cap">
		
		    <div class="card-body">
		        <h4 class="card-title">Name</h4>
		        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		        <a href="#" class="btn btn-primary">Show More</a>
		        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
		        Contact Info
			    </a>
			    <div class="collapse" id="collapseExample">
			    <p style="margin-left: 100px;">User user</p>
				</div>
		    </div>
		
		</div>
	</div>
	
	
	
</div>
 -->
<!--/.Card-->
               
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
