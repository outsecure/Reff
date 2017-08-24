<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
           function calculate(){
    var myBox1 = document.getElementById('critical').value; 
    console.log(myBox1);

     //var myBox2 = document.getElementById('high').value; 
    var y =[];
    var inputs = document.getElementsByClassName("critical");

 
    for(var i =0; i < inputs.length; i++) 
{
  		 if(inputs[i].checked === true){
      		var x = inputs[i].value ;
      		y.push(parseInt(x)) // marking the required radio as checked
  }
  		
}
	
	//console.log(x);
	//console.log(y);
	//console.log(myBox1*y.reduce(getSum));
    //var myBox2 = document.getElementById('box2').value;
        var myResult = myBox1 * y.reduce(getSum);
    result.innerHTML = myResult;
 	//console.log(myResult);
 	//document.getElementById('result').innerHTML=myResult;
        //var t = myBox1*y.reduce(getSum);
        //console.log(t);
           //document.getElementById("demo1").innerHTML = t;
           document.getElementById('result').value=myResult;


function getSum(total, num) {
    return total + num;
}
//for high**************//
var z=[];
var myBox2 = document.getElementById('high').value; 
var inputs1 = document.getElementsByClassName("high");
   for(var i =0; i < inputs1.length; i++) 
{
  		 if(inputs1[i].checked === true){
      		var a = inputs1[i].value ;
      		z.push(parseInt(a)); // marking the required radio as checked
  }
  		
}
   var myResult1 = myBox2 * z.reduce(getSum1);
   result.innerHTML = myResult1;
   document.getElementById('result1').value=myResult1;
   
   function getSum1(total, num) {
	    return total + num;
	}
	
 //for medium**************//
   var m=[];
   var myBox3 = document.getElementById('medium').value; 
   var inputs2 = document.getElementsByClassName("medium");
      for(var i =0; i < inputs2.length; i++) 
   {
     		 if(inputs2[i].checked === true){
         		var a = inputs2[i].value ;
         		m.push(parseInt(a)); // marking the required radio as checked
     }
     		
   }
      var myResult2 = myBox3 * m.reduce(getSum2);
      result.innerHTML = myResult2;
      document.getElementById('result2').value=myResult2;
      
      function getSum2(total, num) {
    	    return total + num;
    	}    
      //for low**************//
      var l=[];
      var myBox4 = document.getElementById('low').value; 
      var inputs3 = document.getElementsByClassName("low");
         for(var i =0; i < inputs3.length; i++) 
      {
        		 if(inputs3[i].checked === true){
            		var a = inputs3[i].value ;
            		l.push(parseInt(a)); // marking the required radio as checked
        }
        		
      }
         var myResult3 = myBox4 * l.reduce(getSum3);
         result.innerHTML = myResult3;
         document.getElementById('result3').value=myResult3;



function getSum3(total, num) {
    return total + num;
}
}


function show1(){
  document.getElementById('div1').style.display ='none';
}

  function show2(){
  document.getElementById('div1').style.display = 'block';
}
window.onload = function() {
  document.getElementById('div1').style.display = 'none';
};
 function success(){
document.getElementById("success").innerHTML = "file uploaded successfully"
 }
                
            </script>



</head>
<body>

	<h1>NEW YORK STATE DEPARTMENT OF FINANCIAL SERVICES (23 NYCRR 500)
		CYBERSECURITY REQUIREMENTS FOR FINANCIAL SERVICES COMPANIES</h1>
	<p>Questionnaire template for 'NEW YORK STATE DEPARTMENT OF
		FINANCIAL SERVICES CYBERSECURITY REQUIREMENTS FOR FINANCIAL SERVICES
		COMPANIES</p>




	<h2>Section 500.02 Cybersecurity Program</h2>
	<h3>Section 500.02(a)</h3>
	<div>

		<p>1. Cybersecurity Program. Each Covered Entity shall maintain a
			cybersecurity program designed to protect the confidentiality,
			integrity and availability of the Covered Entitys Information Systems</p>
		<form name="uploadForm" id="contactForm" action="insertdb.jsp"
			method="POST">
			<input type="hidden" id="critical" value="4" />
			 <input type="radio" name="1" value="1" class="critical" onclick="show1();">N/A<br>
			  <input type="radio" name="1" value="2" class="critical"onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="1" value="3" class="critical" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="1" value="4" class="critical" onclick="show2();">Fully Compliant <br>
			<div id="div1">
				<input type="file" name="file" value="" width="100" /> <input
					type="button" onclick="success()" value="upload" />

			</div>
			<p id="success"></p>






			<h2>Section 500.02 Cybersecurity Program</h2>
			<h3>Section 500.02(b)</h3>


			<p>2. The cybersecurity program shall be based on the Covered
				Entitys Risk Assessment and designed to perform the following core
				cybersecurity functions:</p>
		 <input type="radio" name="2" value="1" class="critical" onclick="show1();">N/A<br>
			  <input type="radio" name="2" value="2" class="critical"onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="2" value="3" class="critical" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="2" value="4" class="critical" onclick="show2();">Fully Compliant <br>

			<h4>Section 500.02(b)(1) Cybersecurity Program</h4>


<input type="hidden" id="high" value="3" />
<input type="hidden" id="medium" value="2" />
<input type="hidden" id="low" value="1" />
			<p>3. Identify and assess internal and external cybersecurity
				risks that may threaten the security or integrity of Nonpublic
				Information stored on the Covered Entitys Information Systems:</p>

		 <input type="radio" name="3" value="1" class="high" onclick="show1();">N/A<br>
			  <input type="radio" name="3" value="2" class="high" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="3" value="3" class="high" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="3" value="4" class="high" onclick="show2();">Fully Compliant <br>

			<h4>Section 500.02(b)(2)Cybersecurity Program</h4>



			<p>4. Use defensive infrastructure and the implementation of
				policies and procedures to protect the Covered Entitys Information
				Systems, and the Nonpublic Information stored on those Information
				Systems, from unauthorized access, use or other malicious acts:</p>

			<input type="radio" name="4" value="1" class="high" onclick="show1();">N/A<br>
			  <input type="radio" name="4" value="2" class="high" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="4" value="3" class="high" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="4" value="4" class="high" onclick="show2();">Fully Compliant <br>



					<p>5. Use defensive infrastructure and the implementation of
				policies and procedures to protect the Covered Entitys Information
				Systems, and the Nonpublic Information stored on those Information
				Systems, from unauthorized access, use or other malicious acts:</p>

			<input type="radio" name="5" value="1" class="medium" onclick="show1();">N/A<br>
			  <input type="radio" name="5" value="2" class="medium" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="5" value="3" class="medium" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="5" value="4" class="medium" onclick="show2();">Fully Compliant <br>
			
	<p>6. Use defensive infrastructure and the implementation of
				policies and procedures to protect the Covered Entitys Information
				Systems, and the Nonpublic Information stored on those Information
				Systems, from unauthorized access, use or other malicious acts:</p>

			<input type="radio" name="6" value="1" class="medium" onclick="show1();">N/A<br>
			  <input type="radio" name="6" value="2" class="medium" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="6" value="3" class="medium" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="6" value="4" class="medium" onclick="show2();">Fully Compliant <br>
			   
			   
			   			<p>7. Use defensive infrastructure and the implementation of
				policies and procedures to protect the Covered Entitys Information
				Systems, and the Nonpublic Information stored on those Information
				Systems, from unauthorized access, use or other malicious acts:</p>

			<input type="radio" name="7" value="1" class="low" onclick="show1();">N/A<br>
			  <input type="radio" name="7" value="2" class="low" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="7" value="3" class="low" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="7" value="4" class="low" onclick="show2();">Fully Compliant <br>
			
	<p>8. Use defensive infrastructure and the implementation of
				policies and procedures to protect the Covered Entitys Information
				Systems, and the Nonpublic Information stored on those Information
				Systems, from unauthorized access, use or other malicious acts:</p>

			<input type="radio" name="8" value="1" class="low" onclick="show1();">N/A<br>
			  <input type="radio" name="8" value="2" class="low" onclick="show2();"> Non Compliant<br> 
			  <input type="radio" name="8" value="3" class="low" onclick="show2();">Partially Compliant<br>
			   <input type="radio" name="8" value="4" class="low" onclick="show2();">Fully Compliant <br>
			
			<br>
			<br> <input type="submit" onclick="calculate()" value="Submit">
			<br> Critical: <input type="text" id="result" name="sample" /><br>
			High: <input type="text" id="result1" name="sample1" /><br>
			Medium: <input type="text" id="result2" name="sample2" /><br>
			low:	<input type="text" id="result3" name="sample3" /><br>
		</form>


		


	</div>
</body>

</html>