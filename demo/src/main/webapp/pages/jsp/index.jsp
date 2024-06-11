<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<form action="req1" method="Get">
<center>
<h1>Login Page</h1>

<label for="uname"><b>Email :</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>
      </br>

      <label for="psw"><b>Password :</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
       </br>
      
      <button type="submit">Login</button>
      
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>

</center>
</form>
<center>
<p>Not registered?
                  <a href="#"
                     style="text-decoration: none;">
                        Create an account
                  </a>
            </p>
            </center>

</body>
</html>