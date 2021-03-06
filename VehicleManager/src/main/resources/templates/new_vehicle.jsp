<html xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
    <head>
		<meta charset="ISO-8859-1">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"></link>
    </head>

	<nav class="navbar fixed-top navbar-expand-md navbar-dark bg-info scrolling-navbar">
	
	
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
	        <ul class="navbar-nav mr-auto">
	        	
	            <li class="nav-item ">
	                <a class="nav-link" href="shopCar.jsp">Company</a>
	            </li>
	            <li class="nav-item ">
	                <a class="nav-link" href="sell.jsp">Partners</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="newListings.jsp">Resources</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" href="favorites.jsp">Support</a>
	            </li>
	           
	        </ul>
	    </div>
	   
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
	        <ul class="navbar-nav ml-auto">
	        	
	        	 <li class="nav-item">
	                 <form class="form-inline">
   					 <input class="form-control mr-sm-2" type="search" placeholder="Vehicle, customer, and more" aria-label="Search">
   					 <button class="btn btn-primary" type="submit">Search</button>
  					</form>
	            </li>
	        </ul>
	    </div>
	   
	    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
	        <ul class="navbar-nav ml-auto">
	        		        
	            <li class="nav-item">
	                <form th:action="@{/logout}" method="post">
					<input type="submit" value="Logout" />
				</form>
	            </li>
	            
	        </ul>
	    </div>
	   
	</nav>

	<body>

			<head>
	
			<style>
			
			
			/* Style the side navigation */
			/* The side navigation menu */
.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

/* Sidebar links */
.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}

/* Active/current link */
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

/* Links on mouse-over */
.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

/* Page content. The value of the margin-left property should match the value of the sidebar's width property */
div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

/* On screens that are less than 700px wide, make the sidebar into a topbar */
@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

/* On screens that are less than 400px, display the bar vertically, instead of horizontally */
@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
			
			.body {
			  margin-left: 0px;
			  padding-left: 20px;
			  padding-top:50px;
			  background: url(https://cdn.hipwallpaper.com/i/8/27/5u6QG1.png);
			  position: relative;
			  background-repeat: no-repeat;
			  background-attachment: fixed;
  			  background-size:100% 100vh;
			}
			
			.sidenavSearch {
			  height: 140px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			  padding-top: 10px;
			}
			
			.bottomLine{
			 border-bottom-style: dashed;
			  border-color: grey;
			  border-right-width: 1px;
			  padding-left: 10px;
			}
			
			.label{
			 font-weight:bold;
			 padding-left: 10px;
			}
			
			.sidenavPrice {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			.sidenavYear {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			.sidenavDrive {
			  height: 70px;
			  background-color: #F5F5F5;
			  padding-left: 10px;
			}
			
			/* Style the content */
			.content {
				;
			  margin-left: 0px;
			  padding-left: 20px;
			}
			</style>
			
			</head>
			<body class="body">
			<br>
			<div class="sidebar">
  <a  href="/">Dashboard</a>
  <a class="active" href="/inventory">Inventory</a>
  <a href="/customers">Customers</a>
  <a href="/currentDeals">Current Deals</a>
  <a href="/accounting">Accounting</a>
  <a href="/pending">Pending</a>
  <a href="/myAccount">My Account</a>
  <a href="/admin">Admin</a>
</div>

<!-- Page content -->
<div class="content">
   
   <div align="center">	
		<h1>Add New Vehicle</h1>
		<br/>
		<form action="#" th:action="@{/save}" th:object="${vehicle}" method="post">
			<table border="0" cellpadding="10">
				<tr>
					<td>Make:</td>
					<td><input type="text" th:field="*{make}" /></td>
				</tr>
				<tr>
					<td>Model:</td>
					<td><input type="text" th:field="*{model}" /></td>
				</tr>				
				<tr>
					<td>Year:</td>
					<td><input type="text" th:field="*{year}" /></td>
				</tr>				
				<tr>
					<td>Price:</td>
					<td><input type="text" th:field="*{price}" /></td>
				</tr>	
				<tr>
					<td>Stock:</td>
					<td><input type="text" th:field="*{stock}" /></td>
				</tr>				
				<tr>
					<td colspan="2"><button type="submit">Save</button></td>
				</tr>
			</table>
		</form>
	</div>
  
  
  
  
</div>

			
			</body>

  	</body>
</html>
