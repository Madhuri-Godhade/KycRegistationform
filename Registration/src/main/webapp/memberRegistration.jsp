<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KYC APPLICATION FORM</title>
<h3 style="text-align: center;">ONLINE KYC APPLICATION FORM</h3>
<style>
        table
            {   color: white;
                background-color: blue;
                width: 600px;
                
            }
        #btn
            {
                background-color: green;
                color:white;
                height: 45px;
                width: 100px;
                border-radius: 15px;
            }
            
            input
            {    border-radius:5px;
                height: 30px;
                font-size: 15px;
                
            }
           
            select
            {
                width: 230px;;
                height: 30px;
            }


            span{
                color:red;
                font-size: 15px;
            }

    </style>
</head>

 <body>
    <form  action="Register" method="post" >
    <table align="center" border="0" cellspacing="15">
        
      <tr>
          <td>Name:</td>
          <td><input type="text" id="Name" placeholder="Name" name="name" size="24">
         <br> <span id="NAME"></span></td>
      </tr>
      <tr>
        <td>Age:</td>
        <td><input type="number" id= "Age" placeholder="Age" name="age" size="24">
            <br> <span id="AGE"></span></td>
      </tr>
      <tr>
        <td>Gender:</td>
        <td><input  type="radio" name="gender" id="rd1">Male
        <input type="radio" name="gender"  id="rd2">Female
        <input type="radio" name="gender"  id="rd3">Other
        </td>
        
    </tr>
      <tr>
        <td>Nationality:</td>
        <td><input type="text" id= "Nationality"  placeholder="Nationality" name="nationality" size="24" >
            <br> <span id="NATIONALITY"></span></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><input type="text" id= "Email" placeholder="Email" name="email" size="24" >
             <br> <span id="EMAIL"></span></td>
    </tr>
    
    <tr>
        <td>Current Address:</td>
        <td><textarea rows="2" cols="30" id="Current Address" name="cAddress"></textarea>
            <br> <span id="ADDRESS"></span></td>
    </tr>
    <tr>
        <td>Permanent Address:</td>
        <td><textarea rows="2" cols="30" name="pAddress" ></textarea></td>
    </tr>

    <tr>
        <td >    Occupation :</td>
          <td>   
        <select id="selection" onchange=" changeoccupation()" name="occupation" >  
        <option value="Occupation">Occupation</option> 
        <option value="Accountant">Accountant</option> 
        <option value="Architect">Architect</option>
        <option value="Agriculture">Agriculture</option>  
        <option value="Business">Business</option>  
        <option value="Beautician">Beautician</option>  
        <option value="Engineer">Engineer</option>  
        <option value="Other">Others</option>  
        </select> </td> 
    </tr>
    <tr id="details">
        <td>Occupation Details:</td>
        <td><input type="text" id= "OccupationDetails"  name="occuDetails">
            <br> <span id="Occupation"></span></td>
    </tr>

    <tr>
          <td align="center" colspan="2">
              <input type="submit"  value="Submit" id="btn" onclick="validation()" ></td>
    </tr>
    </table>
    </form>
  <script>
        function validation()
        {   
            var name=document.getElementById("Name").value;
            var age=document.getElementById("Age").value;
            var nation=document.getElementById("Nationality").value;
            var email=document.getElementById("Email").value;
            var address=document.getElementById("Current Address").value;
            var select=document.getElementById("selection").value;
           
            var gender1=document.getElementById("rd1");
            var gender2=document.getElementById("rd2");
            var gender3=document.getElementById("rd3");
        
            if(name =="")
            {
                document.getElementById("NAME").innerHTML="**Please write your full Name**";
                return false;
            }
            if(name.length<2)
            {
                document.getElementById("NAME").innerHTML="**Please write more than one character in Name**";
                return false;
            }
            else
            {
                document.getElementById("NAME").innerHTML="";
            }
            if(age =="")
            {
                document.getElementById("AGE").innerHTML="**Please enter your age**";
                return false;
            }
            if(age <18)
            {
                document.getElementById("AGE").innerHTML="**Age should be greater than 18**";
                return false;
            }
            else
            {
                document.getElementById("NAME").innerHTML="";
            }
	    if(nation =="")
            {
                document.getElementById("NATIONALITY").innerHTML="**Please enter your Nationality**";
                return false;
            }
            else
            {
                document.getElementById("NATIONALITY").innerHTML="";
            }
            if(email =="")
            {
                document.getElementById("EMAIL").innerHTML="**Please enter emailId in abcd@gmail.com format**";
                return false;
            }
            if(email.indexOf('@')<=0)
            {
                document.getElementById("EMAIL").innerHTML="**Invalid position off '@' **";
                return false;
            }
		if(email.charAt(email.length-4)!='.' && email.charAt(email.length-3)!='.')
            {
                document.getElementById("EMAIL").innerHTML="**Invalid position off '.' **";
                return false;
            }
            else
            {
                document.getElementById("EMAIL").innerHTML="";
            }
 		if(address =="")
            {
                document.getElementById("ADDRESS").innerHTML="**Please enter valid Address**";
                return false;
            }
            else
            {
                document.getElementById("ADDRESS").innerHTML="";
            }
  		
		if(gender1.checked==false && gender2.checked==false && gender3.checked==false)
            {
                alert("Please Enter Your Gender");
            }
		

	}
	
function changeoccupation()
        {
            var detail=document.getElementById("selection");
            if(detail.value=="Other")
            {
                document.getElementById("details").style.visibility="visible";
            }
            else
            {
                document.getElementById("details").style.visibility="hidden";
            }
        }
	
</script>
</body>
</html>