<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>VertexStudyPoint</title>
    <!---Custom CSS File--->
    <link rel="stylesheet" href="css/ragistartion.css" />
<script>
var request;  
function sendInfo()  
{  
	var hall="";
	 var ele = document.getElementsByName('hall-type');
	          
	        for(i = 0; i < ele.length; i++) {
	            if(ele[i].checked)
	            {hall=ele[i].value;}
	        }  
	var url="seat.jsp?val="+hall;  
	  
	if(window.XMLHttpRequest){  
	request=new XMLHttpRequest();  
}  
	else if(window.ActiveXObject){  
	request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
	request.onreadystatechange=getInfo;  
	request.open("GET",url,true);  
	request.send();  
}  
catch(e)  
{  
	alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
	if(request.readyState==4){  
	var val=request.responseText;  
	document.getElementById('seat').innerHTML=val;  
	}  
}  

  function Validate() {
            var pass = document.getElementById("pass").value;
            var confirmpass = document.getElementById("confirmpass").value;
            if (pass != confirmpass) {
                alert("You first Passwords is not similar with 2nd password. Please enter same password in both");
                return false;
            }
            return true;
        }
  
  function validDate() {	    
	  var dob = new Date(document.getElementById("dob").value);
      var currentDate = new Date();
      var tenYearsAgo = new Date(currentDate);
      tenYearsAgo.setFullYear(currentDate.getFullYear() - 10);

      if (dob >= tenYearsAgo || dob >= currentDate) {
        alert("Birthdate should be more than 10 years ago and not the current date.");
        return false;
      }

      return true;    
	}
</script>
  </head>
  <body>
    <section class="container">
      <header><b>VertexStudyPoint</b></header>
      <form action="Registration.jsp" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" placeholder="Enter full name" name="fname" pattern=" /^[A-Za-z\s'-]+$/" autofocus required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="email" placeholder="Enter email address" name="email"  required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="tel" placeholder="Enter phone number" name="pno" pattern="[789][0-9]{9}" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" placeholder="Enter birth date" name="dob" id="dob" onclick="validDate()" required />
          </div>
        </div>
      <div class="input-box">
          <label>Address</label>
          <input type="text" placeholder="Enter your address" name="add" required />
        </div>

        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender" value="male" checked />
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender" value="female" />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender" value="other" />
              <label for="check-other">prefer not to say</label>
            </div>
          </div>
        </div>

          <div class="column">
            <div class="select-box">
              <select name="study">
                <option hidden>Study</option>
                <option>UPSC</option>
                <option>MPSC</option>
                <option>Banking</option>
                <option>Technical</option>
                <option>Other</option>
              </select>
            </div>
        </div>

<div class="hall-box">
<label for="hall-type">Select Hall Type:</label>
<div id="hall-type">
  <input type="radio" id="achall" name="hall-type" onClick="sendInfo()" value="ac_hall">
  <label for="achall">AC Hall</label>
  <input type="radio" id="nonachall" name="hall-type" onClick="sendInfo()" value="nonac_hall">
  <label for="nonachall">Non-AC Hall</label>
  <input type="radio" id="newhall" name="hall-type" onClick="sendInfo()" value="new_hall">
  <label for="newhall">New Hall</label>
</div>
</div>
<div class="column">
            <div class="select-box">
              <select name="seat" id="seat">
                <option hidden>Seat Number</option>            
               
              </select>
            </div>
</div>

        <div class="input-box">
          <label>Password</label>
          <input type="password" placeholder="Enter Password" name="pass" id="pass" minlength="6" required />
        </div>
<div class="input-box">
          <label>Confirm Password</label>
          <input type="password" placeholder="Enter Password" name="confirmpass" id="confirmpass" minlength="6" required />
        </div>

        <br><br><button  onclick="return Validate()">Next</button>
      </form>
    </section>
  </body>
</html>