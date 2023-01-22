<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Author: Java Team
Website: http://www.realitysoftware.ca
Note: This is a free template released under the Creative Commons Attribution 3.0 license, 
which means you can use it in any way you want provided you keep the link to the author intact.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="style.css" rel="stylesheet" type="text/css" /></head>
<body>
	<!-- header -->
    <div id="logo"><a href="#"><h3>CAPTCHA</h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;COMPLETELY AUTOMATED PUBLIC TURING TEST TO TELL COMPUTERS AND HUMANS APART</a></div>
    <div id="header">
    	<div id="left_header"></div>
        <div id="right_header"></div>
  </div> 
  <div id="menu">
        	<ul>
              <li><a href="index.html">Home</a></li>
              <li><a href="Contacts.html">Contacts</a></li>
			  			  <li><a href="Logout.jsp">Logout</a></li>

          </ul>
      </div>
    <!--end header -->
    <!-- main -->
    <div id="content">
    	<div id="content_top">
        	<div id="content_top_left"></div>
            <div id="content_top_right"></div>
        </div>
      <div id="content_body">
       	  <div id="sidebar">
            <div id="sidebar_top"></div>
            <div id="sidebar_body">
            <h1>WELCOME TO REGISTRATION PAGE</h1>
              
              </div>
                <div id="sidebar_bottom"></div>
          </div>
            <div id="text">
            <div id="text_top">
            	<div id="text_top_left"></div>
                <div id="text_top_right"></div>
            </div>
            <div id="text_body">
              <h1><span>Enter Into The World Of CAPTCHA</span></h1>
              
				
<%@ page import="com.eklavya.security.Base64Coder"%>
<%@ page import="com.eklavya.security.Encrypter"%>
<%@ page import="com.eklavya.security.Config"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page session="true"%>

<form  action="confirmregisterpage.jsp" method="post" >
<%
	String passlineEncoded = request.getParameter("passline_enc");
	String errorMsg = request.getParameter("error");
	Encrypter stringEncrypter = new Encrypter();
	boolean securityLettersPass = true;
	 %>


<%
								String randomLetters = new String("");
								for (int i = 0; i < Config.getPropertyInt(Config.MAX_NUMBER); i++) {
									randomLetters += (char) (65 + (Math.random() * 24));

								}
								randomLetters = randomLetters.replaceAll("I", "X");
								randomLetters = randomLetters.replaceAll("Q", "Z");

								String passlineNormal = randomLetters + "."
										+ request.getSession().getId();
								String passlineValueEncoded = stringEncrypter
										.encrypt(passlineNormal);
								passlineValueEncoded = Base64Coder.encode(passlineValueEncoded);
							%>
      	<table border="2">
		<tr><td>USERNAME</td> 
		<td><input type="text"   name="register_Uname"/></h4></td></tr>
		<tr><td>PASSWORD</td>
		<td><input type="password"  name="register_pwd"/></h4></td></tr></br>
		<tr><td>AGE</td>
		<td><input type="text"  name="register_age"/></h4></td></tr></br>
		<tr><td>SEX</td>
		<td><input type="text"  name="register_sex"/></h4></td></tr></br>
		
		<tr><td>CITY</td>
		<td><input type="text"   name="register_city"/></h4></td></tr>
		<tr><td>STATE</td>
		<td><input type="text"  name="register_state"/></h4></td></tr></br>
		<tr><td>PIN</td>
		<td><input type="text"  name="register_pin"/></h4></td></tr></br>
		<tr><td>COUNTRY</td>
		<td><input type="text"  name="register_country"/></h4></td></tr></br>
		<br>
		<tr>
		<td>Remember the captcha code</td>
									<td colspan="2" align="center">
										<img src="PassImageServlet/<%=passlineValueEncoded%>"
											border="0">
									</td>
		</tr>
		
		<tr><td>Enter the captchacode here</td>
		<td><input type="text"  name="register_capcode"/></h4></td></tr></br>
		</table>
		<input type="submit" value="REGISTER" name="REGISTER"/>
		<input type="hidden" name="passline_enc"
								value="<%=passlineValueEncoded%>">


</form>








				</strong>                            










            </div>
                <div id="text_bottom">
                	<div id="text_bottom_left"></div>
                    <div id="text_bottom_right"></div>
                </div>
          </div>
      </div>
        <div id="content_bottom">
        	<div id="content_bottom_left"></div>
            <div id="content_bottom_right"></div>
        </div>
    </div>
    <!-- end main -->
    <!-- footer -->
    <div id="footer">
    <div id="left_footer">&copy;CopyRights Reserved, </div>
    
    </div>
    <!-- end footer -->


</body>
</html>
