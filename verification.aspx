<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verification.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link type="text/css" rel="stylesheet" href="CSS/verification.css" />
  <link type="text/css" rel="stylesheet" href="CSS/Popup.css" />
<script language="javascript" type="text/javascript">
    function ValidateEmail() {
        var emailRegex = new RegExp(/^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$/i);
        var emailAddress = document.getElementById("<%= Semail.ClientID %>").value;
        var valid = emailRegex.test(emailAddress);
        if (!valid) {
            alert("Please Enter Valid Email address");
            return false;
        } else
            return true;
    }
  </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style='overflow-x: hidden;'>
    <asp:Panel ID="Panel1" runat="server"  Height="108px" 
                style="margin-top: 0px" Width="2217px" HorizontalAlign="Left" CssClass="header">

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

              
                <ul id="navbar">
                     &nbsp;&nbsp;&nbsp;&nbsp;<li ><a  href="Default.aspx">Home</a> </li>
                    <li ><a href="Default.aspx">About Us</a> </li>
                    <li ><a href="Default.aspx">Safety and Precautions Tips</a> </li>
                     <li ><a  href="Default.aspx">Testimonials</a> </li>
                      <li ><a  href="Default.aspx">Our Team</a> </li>
                    <li ><a href="Default.aspx">Contact Us</a> </li>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <a class = "btn" href="Default.aspx">Sign in</a>
                       <a class="btn" onclick="popupToggle();"> Join Us</a>
                      <div id="popup">
                      <div class="content">
                      <img src="popupimage/email.png">
                       <div class="sec-title text-center"> 
                      <h2> Join Our Newletter</h2>
                      </div>
                      <div class="inputbox" id="form">

                      <input type="email" placeholder="Enter Email" id="emails"  onkeyup="validate();">
                              <span class="indicator"></span>
                      </div>

                       <div class="inputbox">

                      <input type="submit" value="Sign Up" class="btn">
                      </div>

                    
                      </div>
                        <a id="close" onclick="popupToggle();"><img src="popupimage/cancel.png"></a>
                      </div>
                </ul>

                

             <div style="width: 260px;"><iframe style="display: block;" src="https://cdnres.willyweather.com/widget/loadView.html?id=125069" width="260" height="64" frameborder="0" scrolling="no"></iframe><a style="position: relative;z-index: 1;margin: -64px 0 0 0;float: right;display: block;text-indent: -9999em;height: 64px;width: 20px" href="https://www.willyweather.com/ny/india-county/Amarkantak.html" rel="nofollow">https://www.willyweather.com/ny/india-county/Amarkantak.html</a></div>
   

       
                </asp:Panel>    </div>


<div class="content">
  
   <section>



    <div class= "container" id="container">
 
    <div class= "users singinBx">
    <div class= "imgBx"> <img src="photo/pexels-lumn-399161.jpg"> 

    </div>
    
    <div class= "formBx">

    <div class="Form1">
     <div class="sec-title text-center"> 
    <h2 id="Signinh2" >Verifierd Your E-Mail</h2>
    </div>
   <asp:TextBox ID="TextBox1" CssClass="TextBox1" runat="server" placeholder="Enter E-Mail Address"  OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
      <div class="sec-title text-center">  <h2 id="Signinh21">AND</h2> </div>
   <input type="text" name="Vmail" placeholder="Enter Verification Code" >
    

   <asp:Button ID="btnVerify" CssClass="Buttons" runat="server" Text="Verify Email" OnClick="Verify_Click"></asp:Button>

      <p class= "signups"> Change Password? <a href="#" onclick= "toggleForm();"> Click Here</a></p>
       <p class= "signups"> back to Login <a href="Default.aspx" > Click Here</a></p>
      
      
     

   </div>
    </div>
    </div> 
      



      <div class= "users singupBx">
 

    <div class= "formBx">
   
    <div class="Form1" >

     <div class="sec-title text-center"> 
    <h2 id="Signuph2">Change Password</h2>
    </div>
   <input type="text" name="username" id="name" placeholder="Username"  >
    <asp:TextBox ID="Semail" runat="server" CssClass="textbox"  placeholder="Email Address"> </asp:TextBox>
    <input type="password" name="oldpass"  id="pass" placeholder="Old Password"    >
     <input type="password" name="password" id="passworddd" placeholder="New Password"  >
     <input type="password" name="passwordNew"  id="passwords" placeholder=" Confirm Password" >
   
    
  

 <asp:Button ID="BtnChange" CssClass="Buttons" runat="server" Text="Confirm" OnClientClick="return ValidateEmail();"  OnClick="Change_Click"></asp:Button>
         
      <p class= "signups"> Back to? <a href="#" onclick= "toggleForm();"> Verification Email </a></p>
          <p class= "signups"> back to Login <a href="Default.aspx" > Click Here</a></p>
      

    </div>
   
    </div>
       <div class= "imgBx"><img src="Home/back 6.jpg"> </div>

</div>




    </div>
       


       
</section>


</div>
    </form>

     <script type="text/javascript">

         function toggleForm() {
             var container = document.querySelector('.container');
             container.classList.toggle('active')
         }
    </script>
     <script src="Scripts/JScript.js" type="text/javascript"></script>

</body>
</html>
