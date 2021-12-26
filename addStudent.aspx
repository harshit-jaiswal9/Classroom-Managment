<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addStudent.aspx.cs" Inherits="addStudent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
         <link type="text/css" rel="stylesheet" href="CSS/teacherDashboard.css" />
         <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    

   <input type="checkbox" id="nav-toggle ">
<div class= "sidebar">
<div class="sidebar-brand">
   <h2><span class="lab la-accusoft"></span> <span>  Classroom </span></h2>
</div> 
<div class="sidebar-menu" id="main">
<ul>
   
 <li>
    <a href="TeacherDashboard.aspx"><span class="las la-igloo"></span>
    <span>Dashboard</span></a>
    </li>
    <li>
    <a href="Default.aspx"><span class="las la-home"></span>
	<span>Home</span></a>
    </li>
 <li id="addCourse">
    <a href="" onclick="event.preventDefault();popupTogglesAddCourse();"><span class="las la-users"></span>
	<span>Add Student</span></a>
    <div class="AddCourse" id="AddCourse">
                      <div class="content">
                     <section class="Section">
 

    <div class= "container" id="container">

                     <div class= "user singinBx">
   
    
    <div class= "formBx">

    <div class="Form1">
     <div class="sec-title text-center"> 
    <h2 id="Signinh2" >Add Student</h2>
    </div>
    <div class="inputbox" id="form">
      <input type="text" id="StudentEmail" name="StudentEmail" placeholder="Student Email" onkeyup="validate();" >
      <span class="indicator"></span>
      </div>

<!--<span class= "AddCourseSpan"> If only change the mail id </span>
  <label class="switch" >
  <input type="checkbox" id="CheckBox" onclick="changetextbox();">
  <span class="slider round"></span>
</label>
     
  
      <div class="inputbox" id="formSignup">
    <input type="text" id="email" name="semail" placeholder="Email Address" onkeyup="validate();">
    <span class="indicator"></span>
    </div> -->


   <asp:Button ID="BtnLogin" CssClass="Buttons" runat="server" Text="Add" OnClick="Submit_Click" ></asp:Button>

      
     

   </div>
    </div>
    </div> 





                    </div>
                    </section>
                     
                      </div>
                        <a class="CloseAddCourse" id="CloseAddCourse" onclick="popupTogglesAddCourse();"><img src="popupimage/cancel.png"></a>
         </div>

    </li>
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable1%></span></a>
    </li>
     <li class="licheck">
    <a href="" >
	<span> <%=GlobalVariable2%></span></a>
    </li>
     <li class="licheck">
    <a href="" >
	<span> <%=GlobalVariable3%></span></a>
    </li>
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable4%></span></a>
    </li>
  
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable5%></span></a>
    </li>
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable6%></span></a>
    </li>
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable7%></span></a>
    </li>
     <li class="licheck">
    <a href="">
	<span> <%=GlobalVariable8%></span></a>
    </li>
 
<li>
    <a href=""><span class="las la-clipboard-list"></span>
	<span>tasks</span></a>
    </li> 
     <li>
    <a href="" onclick="event.preventDefault();popupTogglesLogOutTeachers();"><span class="las la-sign-out-alt"></span>
	<span>Log Out</span></a>
     <div class="LogOutTeacher" id="logoutTu">
                      <div class="content">
                     
                     <h2>Do you want to log Out</h2> 
                   
                     <a href="Default.aspx" class="btn"> Yes</a>
                    
                      <a href="addStudent.aspx" class="btn"> No</a>
                     
                      </div>
                        <a class="CloseLogOutTeacher" id="logoutTeacher" onclick="popupTogglesLogOutTeachers();"><img src="popupimage/cancel.png"></a>
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
	<img src="photo/blank-profile-picture-973460_1280.png" width="40px" height="40px" alt="">
        <div>
         <h4><%=Request.QueryString["Username"]%></h4>
	    <small> <%=Request.QueryString["Role"]%></small>
	</div>
     <div class="logout"><a href="" onclick="event.preventDefault();popupTogglesLogOutTeacher();"><span class="las la-sign-out-alt"></span>
	<span>Log Out</span></a>
     <div class="LogOutTeacher" id="LogOutTu2">
                      <div class="content">
                     
                     <h2>Do you want to log Out</h2> 
                   
                     <a href="Default.aspx" class="btn"> Yes</a>
                    
                      <a href="addStudent.aspx" class="btn"> No</a>
                     
                      </div>
                        <a class="CloseLogOutTeacher" id="CloseLogOutTu2" onclick="popupTogglesLogOutTeacher();"><img src="popupimage/cancel.png"></a>
         </div></div>
</div>
</header>

<div class="Student">

<div class="Studentcard">
<div class="Studentcard-header">

<div class="sec-title text-center"> 
    <h2 id="H1" >Added Student</h2>
    </div>
<h2>Email</h2>
</div>
<div class="Studentcard-body">
<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[0]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4> <%=s1[1]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[2]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	   <h4><%=s1[3]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	   <h4><%=s1[4]%></h4>

	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	 <h4><%=s1[5]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[6]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[7]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	   <h4><%=s1[8]%></h4>
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	 <h4><%=s1[9]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[10]%></h4>
	  
	</div>
	</div>
 
</div>

<div class="student">
<div class="infos">
	
	<div>
	  <h4><%=s1[11]%></h4>
	  
	</div>
	</div>
 
</div>







</div>
</div>
</div>



 


  <!-- this is for log out function using popup -->

  <script type="text/javascript">
                function popupTogglesLogOutTeachers(){
const popup = document.getElementById('logoutTu');
popup.classList.toggle('active')



   }

   </script>
   <script type="text/javascript">
                function popupTogglesLogOutTeacher(){
const popup = document.getElementById('LogOutTu2');
popup.classList.toggle('active')



   }

   </script>

    <script type="text/javascript">
                function popupTogglesAddCourse(){
const popup = document.getElementById('AddCourse');
popup.classList.toggle('active')



   }

   </script>


    <script type="text/javascript">
     function validate(){
      const  formSignup = document.getElementById('form');
      const email = document.getElementById('StudentEmail').value;
      const pattern = /^[^]+@[^]+\.[a-z]{2,3}$/
      if(email.match(pattern))
      {
       formSignup.classList.add('valid')
         formSignup.classList.remove('invalid')
      }else{
       formSignup.classList.add('invalid')
       formSignup.classList.remove('valid')
      }
      if(email =="")
      {
      formSignup.classList.remove('invalid')
       formSignup.classList.remove('valid')
      }
      }
      </script>






      <script type="text/javascript">
          function changetextbox() {
              var checkbox = document.getElementById('CheckBox');
              console.log(checkbox);
              if (checkbox.checked == true) {
                  console.log('test');
                  document.getElementById("CousreInsName").disabled = true;
                  document.getElementById("Department").disabled = true;
                  document.getElementById("SubjectName").disabled = true;
                  document.getElementById("Semester").disabled = true;
                  document.getElementById("CousreInsName").style.cursor = "not-allowed";
                  document.getElementById("Department").style.cursor = "not-allowed";
                  document.getElementById("SubjectName").style.cursor = "not-allowed";
                  document.getElementById("Semester").style.cursor = "not-allowed";
              }
              else if (checkbox.checked == false) {

                  document.getElementById("CousreInsName").disabled = 'false';
                  document.getElementById("Department").disabled = 'false';
                  document.getElementById("SubjectName").disabled = 'false';
                  document.getElementById("Semester").disabled = 'false';
              }
          }
          
</script>
<!--
<script type="text/javascript">
function Activechecker(){
    if (Request.QueryString["id"] == sem) {
        var x = document.getElementsByClassName("licheck");
        var c = document.x.childNodes;
        c.setAttribute('class', "Active");
        x.appendChild(c);
}
}
</script> -->

<!--
 <script type="text/javascript">
 $(document).ready(function() {

        var iCnt = 0;
        // CREATE A "DIV" ELEMENT AND DESIGN IT USING jQuery ".css()" CLASS.
        var container = $(document.createElement('li')).css({
             width: '100%'
        
        });

        $('#BtnLogin').click(function() {
            if (iCnt <= 19) {

                iCnt = iCnt + 1;

                // ADD TEXTBOX.
                $(container).append('<a href=""> <span> </span> </a>');

                   

                // SHOW SUBMIT BUTTON IF ATLEAST "1" ELEMENT HAS BEEN CREATED.
                if (iCnt == 1) {
                    var divSubmit = $(document.createElement('li'));
                    $(divSubmit).append('<a href="Default.aspx"> <span> ${SubjectName} </span> </a>');
                }

                // ADD BOTH THE DIV ELEMENTS TO THE "main" CONTAINER.
                $('#AddCourse').after(container, divSubmit);
            }
            // AFTER REACHING THE SPECIFIED LIMIT, DISABLE THE "ADD" BUTTON.
            // (20 IS THE LIMIT WE HAVE SET)
            else {      
                $(container).append('<label>Reached the limit</label>'); 
               // $('#btAdd').attr('class', 'bt-disable'); 
               // $('#btAdd').attr('disabled', 'disabled');
            }
        });
        });





          var divValue, values = '';

    function GetTextValue() {
        $(divValue) 
            .empty() 
            .remove(); 
        
        values = '';

        $('#SubjectName').each(function() {
            divValue = $(document.createElement('span')).css({
                padding:'5px', width:'200px'
            });
            values += this.value + '<br />'
        });

        $(divValue).append('<a><span>Your selected values</span></a>' + values);
        $('#main').append(divValue);
    }

   
    
    
   </script>  -->


  <!-- <script type="text/javascript">
  
  function a()
  {
   
       var mydiv = document.getElementById("AddCourse");

       var aTag = document.createElement('a');
       var s = document.createElement('span');
       aTag.setAttribute('href', "Default.aspx");
       aTag.innerText = ${SubjectName};
        atag.classList.add('s');
       mydiv.appendChild(aTag);
   
   }
   </script> -->
















    </form>
</body>
</html>