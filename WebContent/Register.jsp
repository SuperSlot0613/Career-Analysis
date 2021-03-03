<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
<link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="Registercss.css">
  <link rel="stylesheet" type="text/css" media="all" href="Switchery.css">
  <script type="text/javascript" src="switchery.js">
  </script>
  <style>
  @charset "ISO-8859-1";
@import url(http://fonts.googleapis.com/css?family=Laila:400,700);

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
  outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html { overflow-y: scroll; }
body {
  font-family: Arial, Tahoma, sans-serif;
  background: #e2eef4;
  font-size: 62.5%;
  line-height: 1;
  padding-top: 40px;
}

br { display: block; line-height: 1.6em; } 

input, textarea { 
  -webkit-font-smoothing: antialiased;
  outline: none; 
}

strong, b { font-weight: bold; }
em, i { font-style: italic; }

h1 {
  display: block;
  font-size: 3.1em;
  line-height: 1.45em;
  font-family: 'Laila', serif;
  text-align: center;
  font-weight: bold;
  color: #555;
  text-shadow: 1px 1px 0 #fff;
}


/** form field **/
form {
  display: block;
  margin: 30px;
  overflow: hidden;
  background: #fff;
  border: 1px solid #e4e4e4;
  border-radius: 5px;
  font-size: 0;
}

form > div > label {
  display: block;
  padding: 20px 20px 10px;
  vertical-align: top;
  font-size: 13px;
  font-weight: bold;
  text-transform: uppercase;
  color: #939393;
  cursor: pointer;
}
form > div.switch > label {
  padding: 16px 20px 13px;
}

.col-2, .col-3, .col-4 { 
  border-bottom: 1px solid #e4e4e4;
}

form > div > .col-4 {
  height: 86px;
}

label > input {
  display: inline-block;
  position: relative;
  width: 100%;
  height: 27px;
  line-height: 27px;
  margin: 5px -5px 0;
  padding: 7px 5px 3px;
  border: none;
  outline: none;
  color: #555;
  font-family: 'Helvetica Neue', Arial, sans-serif;
  font-weight: bold;
  font-size: 14px;
  opacity: .6;
  transition: all linear .3s;
}

.col-submit {
  text-align: center;
  padding: 20px;
}

label > select {
  display: block;
  width: 100%;
  padding: 0;
  color: #555;
  margin: 16px 0 6px;
  font-weight: 500;
  background: transparent;
  border: none;
  outline: none;
  font-family: 'Helvetica Neue', Arial, sans-serif;
  font-size: 14px;
  opacity: .4;
  transition: all linear .3s;
}

label > input:focus, label > select:focus {
  opacity: 1;
}



/** button design based on http://codepen.io/guvootes/pen/eyDAb **/
button {
  width: 100%;
  height: 35px;
  border: none;
  border-radius: 4px;
  margin: 0 0 15px 0;
  font-size: 14px;
  color: #fff;
  font-weight: bold;
  text-shadow: 1px 1px 0 rgba(0,0,0,0.3);
  overflow: hidden;
  outline: none;
}

button.submitbtn {
  background-image: -moz-linear-gradient(#97c16b, #8ab959);
  background-image: -webkit-linear-gradient(#97c16b, #8ab959);
  background-image: linear-gradient(#97c16b, #8ab959);
  border-bottom: 1px solid #648c3a;
  cursor: pointer;
  color: #fff;
}
button.submitbtn:hover {
  background-image: -moz-linear-gradient(#8ab959, #7eaf4a);
  background-image: -webkit-linear-gradient(#8ab959, #7eaf4a);
  background-image: linear-gradient(#8ab959, #7eaf4a);
}
button.submitbtn:active {
  height: 34px;
  border-bottom: 0;
  margin: 1px 0 0 0;
  background-image: -moz-linear-gradient(#7eaf4a, #8ab959);
  background-image: -webkit-linear-gradient(#7eaf4a, #8ab959);
  background-image: linear-gradient(#7eaf4a, #8ab959);
  -moz-box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 1px 3px 1px rgba(0, 0, 0, 0.3);
}


/** responsive design **/
@media(min-width: 850px){
  form > div { display: inline-block; }
  .col-submit { display: block; }
  
  .col-2, .col-3, .col-4 { box-shadow: 1px 1px #e4e4e4; border: none; }
  
  .col-2 { width: 50% }
  .col-3 { width: 33.3333333333% }
  .col-4 { width: 25% }
  
  .col-submit button { width: 30%; margin: 0 auto; }
}
  </style>
</head>
<body>
 <div id="wrapper">
  
  <h1>Registration Form</h1>
  
  <form action="Register"method="post"">
  <div class="col-2">
    <label for="Name">
      Full Name
      <input placeholder="What is your full name?" id="name" name="Name" tabindex="1">
    </label>
  </div>
   <div class="col-2">
    <label for="Name">
      Password
      <input type="password" placeholder="What is your full name?" id="name" name="password" tabindex="1">
    </label>
  </div>
   <div class="col-3">
    <label>
      Exam
      <select tabindex="5" name="Exam">
        <option name="Exam">-</option>       
        <option name="Exam">JEE</option>
        <option name="Exam">MHT-CET</option>
        <option name="Exam">JEE ADVANCE</option>
        <option name="Exam">NEET</option>
        <option name="Exam">IHM</option>
        <option name="Exam">CA</option>
        <option name="Exam">MBA</option>  
      </select>
    </label>
  </div>
  <div class="col-2">
    <label for="Address">
      Address
      <input type="text" placeholder="Enter Your Address" id="company" name="Address" tabindex="2">
    </label>
  </div>
  
  <div class="col-3">
    <label for="PhoneNumber">
      Phone Number
      <input placeholder="Enter Your Phone Number" id="phone" name="Phone" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label for="Email">
      Email
      <input placeholder="What is your e-mail address?" id="email" name="Email" tabindex="4">
    </label>
  </div>  
  <div class="col-4">
    <label for="StateRank">
      STATE RANK
      <input type="number" placeholder="Enter The State Rank" id="skills" name="StateRank" tabindex="6">
    </label>
  </div>
  <div class="col-4">
    <label for="AllIndiaRank">
      All India Rank
      <input type="number"placeholder="Enter The All India Rank" id="experience" name="AllIndiaRank" tabindex="7">
    </label>
  </div>
  <div class="col-4">
    <label for="SeatNumber">
      Seat Number
      <input type="text"placeholder="Enter The Seat Number" id="experience" name="SeatNumber" tabindex="7">
    </label>
  </div>
  <div class="col-submit">
    <button  class="submitbtn">Submit Form</button>
  </div>
  </form>
  </div>
<script type="text/javascript">
var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

elems.forEach(function(html) {
  var switchery = new Switchery(html);
});
</script>
</body>
</html>