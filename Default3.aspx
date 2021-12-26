<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
<script  src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <link type="text/css" rel="stylesheet" href="CSS/StudentDashboard.css" />
         <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    

   <input type="checkbox" id="nav-toggle ">
<div class= "sidebar">
<div class="sidebar-brand">
   <h2><span class="lab la-accusoft"></span> <span> Classroom </span></h2>
</div>
<div class="sidebar-menu">
<ul>
   
 <li>
    <a href=""class="active"><span class="las la-igloo"></span>
    <span>Dashboard</span></a>
    </li>
     <li>
    <a href="Default.aspx"><span class="las la-home"></span>
	<span>Home</span></a>
    </li>
 <li>
    <a href="" onclick="event.preventDefault();popupTogglesProfile();"><span class="las la-users"></span>
	<span>Profile</span></a>
    <div id="popupProfile">
                      <div class="content">
                      
                     <div class="extra"> <h2> Welcome <%=Request.QueryString["Username"]%></h2> </div>
                  <!-- <img id = "myid" src="photo/blank-profile-picture-973460_1280.png" width="200px" height="100px"  alt="nothing" />
                   <input  type ='file'  name="images" id = "demo" class="las la-plus-circle"  /> -->

                   <div class="Image_Pic"> <asp:Image ID="Image_Pic"  runat="server" CssClass="profilePic" /> </div>
                    
                   
                     <asp:FileUpload ID="FileUpload1" onchange="ImagePreview1(this);" runat="server" Font-Bold="True"   />
                        
                   
	                

                       <asp:Button ID="BtnLogin" CssClass="btn" runat="server" Text="Save" OnClick="Save_Detail"></asp:Button>
                      

                    
                      </div>
                        <a id="close" onclick="event.preventDefault();popupTogglesProfile();"><img src="popupimage/cancel.png"></a>
                      </div>

    </li>

  <li>
  <a href="Studentindex.aspx?Email=<%=TEmail%>&Username=<%=Username%>&Role=<%=Role %>">
	<span> <% =s1[0]%></span></a>
    </li>
     <li>
  <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role %>">
	<span> <% =s1[1]%></span></a>
    </li>
     <li>
      <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role %>">
	<span> <% =s1[2]%></span></a>
    </li>
     <li>
     <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role%>">
	<span> <% =s1[3]%></span></a>
    </li>
   
     <li>
      <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role%>">
	<span> <% =s1[4]%></span></a>
    </li>
     <li>
     <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role %>">
	<span> <% =s1[5]%></span></a>
    </li>
     <li>
    <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role%>">
	<span> <% =s1[6]%></span></a>
    </li>
     <li>
      <a href="Studentindex.aspx?Email=<%=TEmail %> &Username=<%=Username %>&Role=<%=Role%>">
	<span> <% =s1[7]%></span></a>
    </li>
<li>
    <a href=""><span class="las la-clipboard-list"></span>
	<span>tasks</span></a>
    </li> 
    <li>
    <a href="" onclick="event.preventDefault();popupTogglesLogOutStudent();"><span class="las la-sign-out-alt"></span>
	<span>Log Out</span></a>
     <div class="LogOutStudent" id="logoutStu">
                      <div class="content">
                     
                     <h2>Do you want to log Out</h2> 
                   
                     <a href="Default.aspx" class="btn"> Yes</a>
                    
                      <a href="Default3.aspx" class="btn"> No</a>
                     
                      </div>
                        <a class="CloseLogOutStudent" id="logoutStudent" onclick="popupTogglesLogOutStudent();"><img src="popupimage/cancel.png"></a>
         </div>
    </li>
</ul>
	</div>
</div> 

<div class="main content">
	<header>
	<h1>
	  <label for="nav-toggle ">
	    <span class="las la-bars"></span>
	  </label>
	Dashboard
         </h1>


<div class="search-wrapper">
	<span class="las la-search"></span>
	<input type="search" placeholder="search here"/>
</div>

<div class="user-wrapper">
	<img  src="photo/blank-profile-picture-973460_1280.png" width="40px" height="40px" alt="">
 
        <div>
            <h4><%=Request.QueryString["Username"]%></h4>
	    <small> <%=Request.QueryString["Roles"]%></small>
	</div>
    <div class="logout"><a href="" onclick="event.preventDefault();popupTogglesLogOutStudent();"><span class="las la-sign-out-alt"></span>
	<span>Log Out</span></a>
     <div class="LogOutStudent" id="logoutstu2">
                      <div class="content">
                     
                     <h2>Do you want to log Out</h2> 
                   
                     <a href="Default.aspx" class="btn"> Yes</a>
                    
                      <a href="Default3.aspx" class="btn"> No</a>
                     
                      </div>
                        <a class="CloseLogOutStudent" id="CloseLogOutStu2" onclick="popupTogglesLogOutStudent();"><img src="popupimage/cancel.png"></a>
         </div></div>

</div>
</header>

<main>

<div class="cards">
    <div class="cards-single">
	<div>
	   <h1><%=TotalStudent%></h1>
	    <span>Total Student</span>
	 </div>
	 <div>
	     <span class="las la-users"></span>
	    </div>
	  </div>

 <div class="cards-single">
	<div>
	   <h1><%=j %></h1>
	    <span> Total Subject</span>
	 </div>
	 <div>
	     <span class="las la-book-open"></span>
	    </div>
	  </div>
	
 <div class="cards-single">
	<div>
	   <h1>0</h1>
	    <span> Assignment</span>
	 </div>
	 <div>
	     <span class="las la-clipboard-check"></span>
	    </div>
	  </div>

 <div class="cards-single">
	<div>
	   <h1>0</h1>
	    <span>Pending Assignment</span>
	 </div>
	 <div>
	     <span class="las la-clipboard-list"></span>
	    </div>
	  </div>
</div>


	

<div class="recent-grid">
  <div class="projects">
<div class="card">
<div class="card-header">
<h3>Recent Assignment</h3>

<button>See all<span class="las la-arrow-right"></span> </button>
</div>
<div class="card-body">
<div class="table-responsive">
<table width= "100%">
<thead>
	<tr>
	 <td>Title</td>
	 <td>Subject</td>
	 <td>Status</td>
	 </tr>
</thead>
<tbody>
	<tr>
	<td>Web Design</td>
	<td> java</td>
	<td>
	  <span class="status purple"></span>
	review
</td>
</tr>
	<tr>
	<td>Web development</td>
	<td>Frontend</td>
	<td>
	  <span class="status pink"></span>
	in progress
</td>
</tr>






	<tr>
	<td>Web site</td>
	<td>C#</td>
<td>
	  <span class="status orange "></span>
	pending
</td>
</tr>
</tbody>
</table>
	

 </div >
</div>
</div>
</div>

</div>

 








  <script type="text/javascript">
                function popupTogglesProfile(){
const popup = document.getElementById('popupProfile');
popup.classList.toggle('active')



   }

   </script>

   <!-- this is for log out function using popup -->
     <script type="text/javascript">
                function popupTogglesLogOutStudent(){
const popup = document.getElementById('logoutStu');
popup.classList.toggle('active')



   }

   </script>
      <script type="text/javascript">
                function popupTogglesLogOutStudent(){
const popup = document.getElementById('logoutstu2');
popup.classList.toggle('active')



   }

   </script>







 <!--  <script type="text/javascript">
   function display(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(event) {
         $('#myid').attr('src', event.target.result);
      }
      reader.readAsDataURL(input.files[0]);
   }
}

$("#demo").change(function() {
   display(this);
});
</script> -->





        <script type="text/javascript">
            function ImagePreview1(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=Image_Pic.ClientID%>').prop('src', e.target.result)
                        .width(72)
                        .height(112);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }

    </script>





    </form>
</body>
</html>
