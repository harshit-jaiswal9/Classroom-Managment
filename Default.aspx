<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
     <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"> 
   
    <link type="text/css" rel="stylesheet" href="CSS/StyleSheet.css" />
  
   
</head>
<body>

<div class="Headed" style='overflow-x: hidden;'>
    <asp:Panel ID="Panel1" runat="server" Height="108px" 
                style="margin-top: 0px" Width="2217px" HorizontalAlign="Left">

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div>
<img class="logo" src="HomeDetail/logo.png" />

</div>
              
                <ul id="navbar">
                     &nbsp;&nbsp;&nbsp;&nbsp;<li ><a class ="active" href="Default.aspx">Home</a> </li>
                    <li ><a  href="#Aboutus">About Us </a> </li> 
                    <li ><a  href="#Health">Safety and Precautions tips</a> </li>
                    <li ><a  href="#Testimonials">Testimonials</a> </li>
                    <li ><a href="#Ourteam">Our Team</a> </li>
                    <li ><a  href="#Contactus">Contact Us</a> </li>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <!--  <a class = "a" id="active" href="Default5.aspx">Sign in</a> -->

                      <a class="btn" onclick="popupToggles();"> Join Us</a>
                      <div id="popup">
                      <div class="content">
                      <img src="popupimage/email.png">
                       <div class="sec-title text-center"> 
                      <h2> Join Our Newletter</h2>
                      </div>
                      <div class="inputbox" id="form">

                      <input type="email" id="emails" placeholder="Enter Email" onkeyup="validates();">
                      <span class="indicator"></span>
                      </div>

                       <div class="inputbox">

                      <input type="submit" value="Sign Up" class="btn">
                      </div>

                    
                      </div>
                        <a id="close" onclick="popupToggles();"><img src="popupimage/cancel.png"></a>
                      </div>



                      <!-- new code start ----------------------------------------------------------------------------------------------------- -->

                       <a class="btn" onclick="popupToggle();"> Sign In</a>
                      <div id="popup1">
                     <form id="newform" runat="server" >

  
   <div class="content">
  
  
  
   <section class="Section">
 
 




    <div class= "container" id="container">
 
    <div class= "user singinBx">
    <div class= "imgBx"> <img src="Home/334.jpg"> 

    </div>
    
    <div class= "formBx">

    <div class="Form1">
     <div class="sec-title text-center"> 
    <h2 id="Signinh2" >Sign In</h2>
    </div>
   <input type="text" name="Lusername" placeholder="Username" >
   <select id="Role" class="multiselectdd" name="Roles" >
<option>Select Role</option>
<option>Student</option>
<option>Teacher</option>

</select>
     <input type="password" name="Lpassword" placeholder="Password" >
   <!-- <input type="submit" name="" value="Login" > 

    <input type="button" name="btnLogin" id="Button2" value="Login" runat="server" onserverclick="Login_Click"/> -->
   
   <!--   <asp:TextBox ID="Lusername" runat="server" CssClass="textbox"  placeholder="Username"></asp:TextBox>
   <asp:TextBox ID="Lpassword" runat="server" CssClass="textbox"  placeholder="Password"></asp:TextBox> -->

   <asp:Button ID="BtnLogin" CssClass="Buttons" runat="server" Text="Login" OnClick="Login_Click"></asp:Button>

      <p class= "signups"> Don't have an account? <a href="#" onclick= "toggleForm();"> Sign up</a></p>
      <p class= "forgets"> forget password ? <a href="#" onclick= "toggleForms();"> Click here </a></p> 
        <p class= "signups"> Change Password OR Verify Email <a href="verification.aspx" > Click Here</a></p>
     

   </div>
    </div>
    </div> 
      
    
       


  
          <div class= "user singupBx">
 

    <div class= "formBx">
   
    <div class="Form1" id="forms1">

     <div class="sec-title text-center"> 
    <h2 id="Signuph2">Create account</h2>
    </div>
   <input type="text" name="username" id="name" placeholder="Username"  >



 <select id="multiselectdd" class="multiselectdd" name="mfi_4_a_i" onchange="changetextbox();">
<option>Select Role</option>
<option>Student</option>
<option>Teacher</option>

</select>
 <input type="text" name="Enrollment" id="Enrollment" placeholder="Enrollment"  >
 <!-- for disabling and chnaging textbox property --> 
 <script type="text/javascript">
    function changetextbox() {
        if (document.getElementById("multiselectdd").value == "Teacher") {
            document.getElementById("Enrollment").disabled = true;
            document.getElementById("Enrollment").style.cursor = "not-allowed";
        } else {
            document.getElementById("Enrollment").disable = 'false';
        }
    }
</script>
  
   <select class="multiselectdd" name="Department">
<option>Select Department</option>


<option> Department of Ancient Indian History, Culture &amp; Archaeology</option>


                   <option> Department of Biotechnology</option>

                       <option> Department of Botany</option>

                        <option> Department of Business Management</option>

                        <option> Department of Chemistry</option>

                     <option> Department of Commerce</option>

                        <option> Department of Computer Science</option>

                        <option>Department of Economics</option>

                   <option> Department of Education</option>

                        <option> Department of English and Foreign Languages</option>

                        <option> Department of Environment Science</option>

                        <option>Department of Geography and Regional Development</option>

                      <option>Department of Geology</option>

                        <option> Department of Hindi</option>

                        <option> Department of History</option>

                  <option> Department of Journalism and Mass Communication</option>

                     <option> Department of Linguistics and Contrastive Study of Tribal Languages</option>

                        <option> Department of Mathematics</option>

                        <option> Department of Pharmacy</option>

                      <option> Department of Physics</option>

               <option> Department of Political Science and Human Rights</option>

                      <option> Department of Social Work</option>

                    <option> Department of Sociology and Social Anthropology</option>

                        <option> Department of Statistics</option>

                    <option> Department of Tourism Management</option>

                      <option> Department of Tribal Studies</option>

                        <option>Department of Vocational Education</option>

                      <option>Department of Yoga</option>

                   <option> Department of Zoology</option>


</select>
    
    
       
   <!-- <asp:TextBox ID="semail" runat="server" CssClass="textbox"  placeholder="Email Address" > </asp:TextBox> -->
    <div class="inputbox" id="formSignup">
    <input type="text" id="email" name="semail" placeholder="Email Address" onkeyup="validate();">
    <span class="indicator"></span>
    </div>
   <input type="text" name="Mobile"  id="Mob" placeholder="Mobile No"    >
     <input type="password" name="password" id="passworddd" placeholder="Create Password"  >
     <input type="password" name="passwordNew"  id="passwords" placeholder=" Confirm Password" >
   
    
    <!--  <input type="button" name="btnSubmit" id="btnSubmit" value="Sign up" runat="server" onserverclick="Submit_Click"/> 
    
    <input type="submit" name="" value="Sign up" onclick="Submit_Click"> -->

<!--     <asp:TextBox ID="username" runat="server" CssClass="textbox"  placeholder="Username" ></asp:TextBox>
   <asp:TextBox ID="Semaail" runat="server" CssClass="textbox"  placeholder="Email Address"> </asp:TextBox>
   <asp:TextBox ID="password" runat="server" CssClass="textbox" type="password" placeholder="Create Password" ></asp:TextBox>
   <asp:TextBox ID="passwordNew" runat="server" CssClass="textbox" type="password"  placeholder="  Confirm Password" ></asp:TextBox>-->

 <asp:Button ID="BtnSignup" CssClass="Buttons" runat="server" Text="Signup" OnClientClick="return ValidateEmail();" OnClick="Submit_Click"></asp:Button>
         
    <p class= "signups"> Already have an account? <a href="#" onclick= "toggleForm();"> Sign in </a></p> 

    </div>
   
    </div>
       <div class= "imgBx"><img src="Home/back 4.jpg"> </div>

</div>

  
  
 <div class= "user forgetBx">
 

    <div class= "formBx">

        <div class="Form1" >
     <div class="sec-title text-center"> 
    <h2 id="Forgeth2">Change a password</h2>
    </div>
   
    <input type="text" name="FOusername" placeholder="Username" >
    
    <input type="email" name="FOemail" placeholder="Email Address " >
   <!--  <input type="password" name="newpassword" placeholder="New Password" required>
     <input type="password" name="confirmpassword" placeholder=" Confirm Password" required> -->
 <!--   <input type="submit" name="" value="Confirm" onclick="btnsubmit" > -->

   <!-- 
   <asp:TextBox ID="FOusername" runat="server" CssClass="textbox"  placeholder="Username"></asp:TextBox>
   <asp:TextBox ID="FOemail" runat="server" CssClass="textbox"  placeholder="Email Address"></asp:TextBox>
   <asp:TextBox ID="newpassword" runat="server" CssClass="textbox"  placeholder="New Password"></asp:TextBox>
   <asp:TextBox ID="confirmpassword" runat="server" CssClass="textbox"  placeholder=" Confirm Password"></asp:TextBox>
 <!-- <input id="login" type="button" value="Confirm" onclick="btnsubmit">-->
 
   <asp:Button ID="BtnForget" CssClass="Buttons" runat="server" Text="Confirm" onclick=" Button1_Click"></asp:Button>
 
      
     
       
      <p class= "forgets"> back to ? <a href="#" onclick= "toggleForms();"> Login in </a></p>
          
          

        </div>
        </div>
        
    
       <div class= "imgBx"><img src="Home/back 5.jpg"> </div> 



       
        
      
      
       </div> 

 


     

       
      

 

   

  



      


 
    



   </div>


</section>





</div>

</form>
         <a id="closes" onclick="popupToggle();"><img src="popupimage/cancel.png"></a>
                      </div>



                     

                     



                </ul>

                

             <div style="width: 260px;"><iframe style="display: block;" src="https://cdnres.willyweather.com/widget/loadView.html?id=125069" width="260" height="64" frameborder="0" scrolling="no"></iframe><a style="position: relative;z-index: 1;margin: -64px 0 0 0;float: right;display: block;text-indent: -9999em;height: 64px;width: 20px" href="https://www.willyweather.com/ny/india-county/Amarkantak.html" rel="nofollow">https://www.willyweather.com/ny/india-county/Amarkantak.html</a></div>
   

       
                </asp:Panel>    </div>



                <div class="scrollTop" onclick="scrollToTop();"> </div>

                <div class="contents">    
            
            <!-- this is for first section -->

            <section class="Homes text-gray-600 body-font"  id="Homes">
  <div class="container mx-auto flex px-5 py-24 items-center justify-center flex-col">
    <img class="lg:w-2/6 md:w-3/6 w-5/6 mb-10 object-cover object-center rounded" alt="hero" src="Home/classroom background.jpeg">
    <div class="text-center lg:w-2/3 w-full">
      <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Get more time to teach and inspire learners with Classroom</h1>
      <p class="mb-8 leading-relaxed">A free and easy tool helping educators efficiently manage and assess progress, while enhancing connections with learners from University, from home, or on the go.</p>
      <div class="flex justify-center">
        <button class="inline-flex text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg" onclick="popupToggle();">Get Started</button>
        
      </div>
    </div>
  </div>
</section>

  <!-- end here -->

  <!-- this is for second section -->

    <section class="Aboutus text-gray-600 body-font" id="Aboutus">
      
  <div class="container px-5 py-24 mx-auto">
  <div class="sec-title text-center"> 
                      <h2> About Us</h2>
                      </div>
    <div class="flex items-center lg:w-3/5 mx-auto border-b pb-10 mb-10 border-gray-200 sm:flex-row flex-col">
      <div class="sm:w-32 sm:h-32 h-20 w-20 sm:mr-10 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 flex-shrink-0">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="sm:w-16 sm:h-16 w-10 h-10" viewBox="0 0 24 24">
          <path d="M22 12h-4l-3 9L9 3l-3 9H2"></path>
        </svg>
      </div>
      <div class="flex-grow sm:text-left text-center mt-6 sm:mt-0">
        <h2 class="text-gray-900 text-lg title-font font-medium mb-2">Purpose</h2>
        <p class="leading-relaxed text-base">Classroom is web service for that aims to simplify Creating and distributing Assignment.</p>
        <a class="mt-3 text-indigo-500 inline-flex items-center">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
            <path d="M5 12h14M12 5l7 7-7 7"></path>
          </svg>
        </a>
      </div>
    </div>
    <div class="flex items-center lg:w-3/5 mx-auto border-b pb-10 mb-10 border-gray-200 sm:flex-row flex-col">
      <div class="flex-grow sm:text-left text-center mt-6 sm:mt-0">
        <h2 class="text-gray-900 text-lg title-font font-medium mb-2">Easy to Use</h2>
        <p class="leading-relaxed text-base">Classroom make it easy for learner and instructor to connect.</p>
        <a class="mt-3 text-indigo-500 inline-flex items-center">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
            <path d="M5 12h14M12 5l7 7-7 7"></path>
          </svg>
        </a>
      </div>
      <div class="sm:w-32 sm:order-none order-first sm:h-32 h-20 w-20 sm:ml-10 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 flex-shrink-0">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="sm:w-16 sm:h-16 w-10 h-10" viewBox="0 0 24 24">
          <circle cx="6" cy="6" r="3"></circle>
          <circle cx="6" cy="18" r="3"></circle>
          <path d="M20 4L8.12 15.88M14.47 14.48L20 20M8.12 8.12L12 12"></path>
        </svg>
      </div>
    </div>
    <div class="flex items-center lg:w-3/5 mx-auto sm:flex-row flex-col">
      <div class="sm:w-32 sm:h-32 h-20 w-20 sm:mr-10 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 flex-shrink-0">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="sm:w-16 sm:h-16 w-10 h-10" viewBox="0 0 24 24">
          <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
          <circle cx="12" cy="7" r="4"></circle>
        </svg>
      </div>
      <div class="flex-grow sm:text-left text-center mt-6 sm:mt-0">
        <h2 class="text-gray-900 text-lg title-font font-medium mb-2">Others</h2>
        <p class="leading-relaxed text-base">This website helps university to collect all students assignments in one place securely.</p>
        <a class="mt-3 text-indigo-500 inline-flex items-center">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
            <path d="M5 12h14M12 5l7 7-7 7"></path>
          </svg>
        </a>
      </div>
    </div>
    <button class="flex mx-auto mt-20 text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg"></button>
  </div>
</section>


<!-- end here section 2 -->

<!-- third section -->

<section class="Health text-gray-600 body-font" id="Health">
 
  <div class="container px-5 py-24 mx-auto flex flex-wrap">
   <div class="sec-title text-center"> 
                      <h2> Safety And Precautions Tips </h2>
                      </div>
    <div class="flex flex-wrap w-full">
      <div class="lg:w-2/5 md:w-1/2 md:pr-10 md:py-6">
        <div class="flex relative pb-12">
          <div class="h-full w-10 absolute inset-0 flex items-center justify-center">
            <div class="h-full w-1 bg-gray-200 pointer-events-none"></div>
          </div>
          <div class="flex-shrink-0 w-10 h-10 rounded-full bg-indigo-500 inline-flex items-center justify-center text-white relative z-10">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
            </svg>
          </div>
          <div class="flex-grow pl-4">
            <h2 class="font-medium title-font text-sm text-gray-900 mb-1 tracking-wider">TIP 1</h2>
            <p class="leading-relaxed">Clean your hands often. Use soap and water, or an alcohol-based hand rub..</p>
          </div>
        </div>
        <div class="flex relative pb-12">
          <div class="h-full w-10 absolute inset-0 flex items-center justify-center">
            <div class="h-full w-1 bg-gray-200 pointer-events-none"></div>
          </div>
          <div class="flex-shrink-0 w-10 h-10 rounded-full bg-indigo-500 inline-flex items-center justify-center text-white relative z-10">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M22 12h-4l-3 9L9 3l-3 9H2"></path>
            </svg>
          </div>
          <div class="flex-grow pl-4">
            <h2 class="font-medium title-font text-sm text-gray-900 mb-1 tracking-wider">TIP 2</h2>
            <p class="leading-relaxed">Wear a mask when physical distancing is not possible.</p>
          </div>
        </div>
        <div class="flex relative pb-12">
          <div class="h-full w-10 absolute inset-0 flex items-center justify-center">
            <div class="h-full w-1 bg-gray-200 pointer-events-none"></div>
          </div>
          <div class="flex-shrink-0 w-10 h-10 rounded-full bg-indigo-500 inline-flex items-center justify-center text-white relative z-10">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <circle cx="12" cy="5" r="3"></circle>
              <path d="M12 22V8M5 12H2a10 10 0 0020 0h-3"></path>
            </svg>
          </div>
          <div class="flex-grow pl-4">
            <h2 class="font-medium title-font text-sm text-gray-900 mb-1 tracking-wider">TIP 3</h2>
            <p class="leading-relaxed">Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.</p>
          </div>
        </div>
        <div class="flex relative pb-12">
          <div class="h-full w-10 absolute inset-0 flex items-center justify-center">
            <div class="h-full w-1 bg-gray-200 pointer-events-none"></div>
          </div>
          <div class="flex-shrink-0 w-10 h-10 rounded-full bg-indigo-500 inline-flex items-center justify-center text-white relative z-10">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
              <circle cx="12" cy="7" r="4"></circle>
            </svg>
          </div>
          <div class="flex-grow pl-4">
            <h2 class="font-medium title-font text-sm text-gray-900 mb-1 tracking-wider">TIP 4</h2>
            <p class="leading-relaxed">Always Carry a Sanitizer.</p>
          </div>
        </div>
        <div class="flex relative">
          <div class="flex-shrink-0 w-10 h-10 rounded-full bg-indigo-500 inline-flex items-center justify-center text-white relative z-10">
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
              <path d="M22 11.08V12a10 10 0 11-5.93-9.14"></path>
              <path d="M22 4L12 14.01l-3-3"></path>
            </svg>
          </div>
          <div class="flex-grow pl-4">
            <h2 class="font-medium title-font text-sm text-gray-900 mb-1 tracking-wider">TIP 5</h2>
            <p class="leading-relaxed">Be Responsible.</p>
          </div>
        </div>
      </div>
      <img class="lg:w-3/5 md:w-1/2 object-cover object-center rounded-lg md:mt-0 mt-12" src="Home/virus-4999857_1280.png" alt="step">
    </div>
  </div>
</section>

<!-- section third end here -->


 <!-- section  four  start here --> 


 <section class="Testimonials text-gray-600 body-font" id="Testimonials">
   
  <div class="container px-5 py-24 mx-auto">
   <!-- <h1 class="text-3xl font-medium title-font text-gray-900 mb-12 text-center"></h1>-->
   <div class="sec-title text-center"> 
                      <h2>Testimonials </h2>
                      </div>
    <div class="flex flex-wrap -m-4">
      <div class="p-4 md:w-1/2 w-full TA">
        <div class="h-full bg-gray-100 p-8 rounded TA1">
          <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="block w-5 h-5 text-gray-400 mb-4" viewBox="0 0 975.036 975.036">
            <path d="M925.036 57.197h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.399 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l36 76c11.6 24.399 40.3 35.1 65.1 24.399 66.2-28.6 122.101-64.8 167.7-108.8 55.601-53.7 93.7-114.3 114.3-181.9 20.601-67.6 30.9-159.8 30.9-276.8v-239c0-27.599-22.401-50-50-50zM106.036 913.497c65.4-28.5 121-64.699 166.9-108.6 56.1-53.7 94.4-114.1 115-181.2 20.6-67.1 30.899-159.6 30.899-277.5v-239c0-27.6-22.399-50-50-50h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.4 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l35.9 75.8c11.601 24.399 40.501 35.2 65.301 24.399z"></path>
          </svg>
          <p class="leading-relaxed mb-6">By allowing students to submit their work with Classroom, I can keep track of my sections, view grades easily, and mark assignments during any free time I have, without having to carry stacks of paper around. Classroom has made this process so easy and convenient.</p>
          <a class="inline-flex items-center">
            <img alt="testimonial" src="https://dummyimage.com/106x106" class="w-12 h-12 rounded-full flex-shrink-0 object-cover object-center">
            <span class="flex-grow flex flex-col pl-4">
              <span class="title-font font-medium text-gray-900">Laura Barton</span>
              <span class="text-gray-500 text-sm"> Science Teacher, Fontbonne Hall Academy</span>
            </span>
          </a>
        </div>
      </div>
      <div class="p-4 md:w-1/2 w-full TB">
        <div class="h-full bg-gray-100 p-8 rounded TB1">
          <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="block w-5 h-5 text-gray-400 mb-4" viewBox="0 0 975.036 975.036">
            <path d="M925.036 57.197h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.399 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l36 76c11.6 24.399 40.3 35.1 65.1 24.399 66.2-28.6 122.101-64.8 167.7-108.8 55.601-53.7 93.7-114.3 114.3-181.9 20.601-67.6 30.9-159.8 30.9-276.8v-239c0-27.599-22.401-50-50-50zM106.036 913.497c65.4-28.5 121-64.699 166.9-108.6 56.1-53.7 94.4-114.1 115-181.2 20.6-67.1 30.899-159.6 30.899-277.5v-239c0-27.6-22.399-50-50-50h-304c-27.6 0-50 22.4-50 50v304c0 27.601 22.4 50 50 50h145.5c-1.9 79.601-20.4 143.3-55.4 191.2-27.6 37.8-69.4 69.1-125.3 93.8-25.7 11.3-36.8 41.7-24.8 67.101l35.9 75.8c11.601 24.399 40.501 35.2 65.301 24.399z"></path>
          </svg>
          <p class="leading-relaxed mb-6">A True Teacher is one who brings Children together and inspires them.</p>
          <a class="inline-flex items-center">
            <img alt="testimonial" src="https://dummyimage.com/107x107" class="w-12 h-12 rounded-full flex-shrink-0 object-cover object-center">
            <span class="flex-grow flex flex-col pl-4">
              <span class="title-font font-medium text-gray-900">Bill Gates</span>
              <span class="text-gray-500 text-sm">Owner,Google</span>
            </span>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- section 4 end here -->


<!-- section five start here -->


<section class="Ourteam text-gray-600 body-font" id="Ourteam" >
 
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-20">
   <!--   <h1 class="text-2xl font-medium title-font mb-4 text-gray-900 tracking-widest">OUR TEAM</h1> -->
   
<div class="sec-title text-center"> 
                      <h2>Our Team </h2>
                      </div>
      <p class="lg:w-2/3 mx-auto leading-relaxed text-base"></p>
    </div>
    <div class="flex flex-wrap -m-4">
      <div class="p-4 lg:w-1/2">
        <div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
          <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4" src="Home/male-gradua.jpg">
          <div class="flex-grow sm:pl-8">
            <h2 class="title-font font-medium text-lg text-gray-900">Arpit Jaiswal</h2>
            <h3 class="text-gray-500 mb-3">BCA-2nd Year</h3>
            <p class="mb-4">IGNTU Amarkantak.</p>
            <span class="inline-flex">
              <a class="text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                </svg>
              </a>
            </span>
          </div>
        </div>
      </div>
      <div class="p-4 lg:w-1/2">
        <div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
          <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4" src="Home/male-gradua.jpg">
          <div class="flex-grow sm:pl-8">
            <h2 class="title-font font-medium text-lg text-gray-900"></h2>
            <h3 class="text-gray-500 mb-3">BCA-2nd Year</h3>
            <p class="mb-4">IGNTU Amarkantak.</p>
            <span class="inline-flex">
              <a class="text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                </svg>
              </a>
            </span>
          </div>
        </div>
      </div>
    <!-- <div class="p-4 lg:w-1/2">
        <div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
          <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4" src="https://dummyimage.com/204x204">
          <div class="flex-grow sm:pl-8">
            <h2 class="title-font font-medium text-lg text-gray-900">Atticus Finch</h2>
            <h3 class="text-gray-500 mb-3">UI Developer</h3>
            <p class="mb-4">DIY tote bag drinking vinegar cronut adaptogen squid fanny pack vaporware.</p>
            <span class="inline-flex">
              <a class="text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                </svg>
              </a>
            </span>
          </div>
        </div>
      </div>
      <div class="p-4 lg:w-1/2">
        <div class="h-full flex sm:flex-row flex-col items-center sm:justify-start justify-center text-center sm:text-left">
          <img alt="team" class="flex-shrink-0 rounded-lg w-48 h-48 object-cover object-center sm:mb-0 mb-4" src="https://dummyimage.com/206x206">
          <div class="flex-grow sm:pl-8">
            <h2 class="title-font font-medium text-lg text-gray-900">Henry Letham</h2>
            <h3 class="text-gray-500 mb-3">Designer</h3>
            <p class="mb-4">DIY tote bag drinking vinegar cronut adaptogen squid fanny pack vaporware.</p>
            <span class="inline-flex">
              <a class="text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                </svg>
              </a>
              <a class="ml-2 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                </svg>
              </a>
            </span>
          </div>
        </div>
      </div>  -->   
    </div>
     
  </div>
</section>

         <!-- section 5 end here -->  

         
          <!-- section six end here -->  
<section class="text-gray-600 body-font relative" id="Contactus">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-12">
     <!-- <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Contact Us</h1> -->
     <div class="sec-title text-center"> 
                      <h2>Contact Us </h2>
                      </div>
      <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Contact us for any query.</p>
    </div>
    <div class="lg:w-1/2 md:w-2/3 mx-auto">
      <div class="flex flex-wrap -m-2">
        <div class="p-2 w-1/2">
          <div class="relative">
            <label for="name" class="leading-7 text-sm text-gray-600">Name</label>
            <input type="text" id="Text1" name="name" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
        <div class="p-2 w-1/2">
          <div class="relative">
            <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
            <input type="email" id="email1" name="email" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
          </div>
        </div>
        <div class="p-2 w-full">
          <div class="relative">
            <label for="message" class="leading-7 text-sm text-gray-600">Message</label>
            <textarea id="message" name="message" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out"></textarea>
          </div>
        </div>
        <div class="p-2 w-full">
          <button class="flex mx-auto text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg">Send</button>
        </div>
        <div class="p-2 w-full pt-8 mt-8 border-t border-gray-200 text-center">
          <a class="text-indigo-500">arpitjaiswalaj9@gmail.com</a>
          <p class="leading-normal my-5">IGNTU Amarkantak
            <br> Pin Code- 484887
          </p>
          <span class="inline-flex">
            <a class="text-gray-500">
              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
              </svg>
            </a>
            <a class="ml-4 text-gray-500">
              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
              </svg>
            </a>
            <a class="ml-4 text-gray-500">
              <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
              </svg>
            </a>
            <a class="ml-4 text-gray-500">
              <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
              </svg>
            </a>
          </span>
        </div>
      </div>
    </div>
  </div>
</section>

           <!-- section 6 end here -->  

            

              


                <!-- footer  section start -->

                <footer class="text-gray-600 body-font Footer">
  <div class="container px-5 py-24 mx-auto flex md:items-center lg:items-start md:flex-row md:flex-nowrap flex-wrap flex-col">
    <div class="w-64 flex-shrink-0 md:mx-0 mx-auto text-center md:text-left">
      <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
        <span class="ml-3 text-xl">Classroom</span>
      </a>
      <p class="mt-2 text-sm text-gray-500"></p>
    </div>
    <div class="flex-grow flex flex-wrap md:pl-20 -mb-10 md:mt-0 mt-10 md:text-left text-center">
    
      <div class="lg:w-1/4 md:w-1/2 w-full px-4">
        <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">Address</h2>
        <nav class="list-none mb-10">
          <li>
            <a class="text-gray-600 hover:text-gray-800">Department of Computer Science,</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Indira Gandhi National tribal University,</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Amarkantak Village-Lalpur,</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Anuppur (M.P.) Pin-484887</a>
          </li>
        </nav>
      </div>
      <div class="lg:w-1/4 md:w-1/2 w-full px-4">
        <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">Legal</h2>
        <nav class="list-none mb-10">
          <li>
            <a class="text-gray-600 hover:text-gray-800">Term</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Privacy Policy</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">User Agreement</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">FAQs</a>
          </li>
        </nav>
      </div>
      <div class="lg:w-1/4 md:w-1/2 w-full px-4">
        <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">Follow</h2>
        <nav class="list-none mb-10">
          <li>
            <a class="text-gray-600 hover:text-gray-800">Twitter</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Facebook</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Instagram</a>
          </li>
          <li>
            <a class="text-gray-600 hover:text-gray-800">Linkedin</a>
          </li>
        </nav>
      </div>
    </div>
  </div>
  <div class="bg-gray-100">
    <div class="container mx-auto py-4 px-5 flex flex-wrap flex-col sm:flex-row">
      <p class="text-gray-500 text-sm text-center sm:text-left">© 2021 
        <a href="https://twitter.com/knyttneve" rel="noopener noreferrer" class="text-gray-600 ml-1" target="_blank">@igntu Classroom</a>
      </p>
      <span class="inline-flex sm:ml-auto sm:mt-0 mt-2 justify-center sm:justify-start">
        <a class="text-gray-500">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
            <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
            <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
            <circle cx="4" cy="4" r="2" stroke="none"></circle>
          </svg>
        </a>
      </span>
    </div>
  </div>
</footer>

<!--end here footer -->


  </div>

           




    <script src="Scripts/JScript.js" type="text/javascript"></script>
     <script type="text/javascript">

         function toggleForm() {
             var container = document.querySelector('.container');
             container.classList.toggle('active')
         }
    </script> 


      <script type="text/javascript">

          function toggleForms() {
              var container = document.querySelector('.container');
              container.classList.toggle('actives')
          }
    </script>
      
   
      
      <script type="text/javascript">
     function validates(){
      const form = document.getElementById('form');
      const emails = document.getElementById('emails').value;
      const pattern = /^[^]+@[^]+\.[a-z]{2,3}$/
      if(emails.match(pattern))
      {
      form.classList.add('valid')
        form.classList.remove('invalid')
      }else{
      form.classList.add('invalid')
      form.classList.remove('valid')
      }
      if(emails =="")
      {
      form.classList.remove('invalid')
      form.classList.remove('valid')
      }
      }
      </script>

           <script type="text/javascript">
     function validate(){
      const  formSignup = document.getElementById('formSignup');
      const email = document.getElementById('email').value;
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
                function popupToggles(){
const popup = document.getElementById('popup');
popup.classList.toggle('active')

   }

   </script>

         <script type="text/javascript">
                function popupToggle(){
const popup1 = document.getElementById('popup1');
popup1.classList.toggle('active')

   }

   </script>


   <script type="text/javascript">
window.addEventListener('scroll',function(){
var scroll = document.querySelector('.scrollTop');
scroll.classList.toggle("active", window.scrollY > 500)
})

function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'


 })
}


 </script>

 
</body>
</html>
