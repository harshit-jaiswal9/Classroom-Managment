 /* popup */

          function popupToggle(){
const popup = document.getElementById('popup');
popup.classList.toggle('active')

   }



   /* email verify */


    function validate(){
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



      /* sticky menu */
        window.onscroll = function () { myFunction() };

          var navbar = document.getElementById("navbar");
          var sticky = navbar.offsetTop;

          function myFunction() {
              if (window.pageYOffset >= sticky) {
                  navbar.classList.add("sticky")
              } else {
                  navbar.classList.remove("sticky");
              }
          }

