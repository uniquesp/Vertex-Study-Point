<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="net.glxn.qrgen.QRCode" %>
<%@ page import="net.glxn.qrgen.image.ImageType" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.awt.Color" %>
<%@ page import="javax.swing.BorderFactory" %>
<html>
  <link rel="icon" type="image/x-icon" href="../Admin/assets/images/bookicon11.jpg">
  <head>
    <title>Attendance</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7;
      }

      h1 {
        text-align: center;
        margin-top: 20px;
      }

      .container {
        text-align: center;
        margin-top: 2px;
      }

      .container label {
        display: block;
        margin-bottom: 5px;
      }

      .container input[type="text"] {
        width: 300px;
        padding: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
      }

      .container input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }

      .container input[type="submit"]:hover {
        background-color: #45a049;
      }

      .container2 {
        text-align: center;
        margin-top: 30px;
      }

      .container2 h2 {
        text-align: center;
        margin-bottom: 10px;
      }

      .container2 img {
        border: 1px solid black;
        max-width: 300px;
      }
    </style>
  </head>
  <body>
    <h1>Attendance QR</h1>
    <br /><br /><br />
    <form method="post" action="attendence2.jsp">
      <div class="container">
        <label>Enter URL:</label>
        <input type="text" name="url" required /><br /><br />
        <input type="submit" value="Generate QR" />
      </div>
    </form>

    <%
    if (request.getParameter("url") != null) {
      String data = request.getParameter("url");
      ByteArrayOutputStream outputStream = QRCode.from(data).withSize(300, 300).to(ImageType.PNG).stream();
      byte[] qrBytes = outputStream.toByteArray();
      String qrBase64 = new String(java.util.Base64.getEncoder().encodeToString(qrBytes));
    %>
    <div class="container2">
      <h2>Generated QR Code:</h2>
      <img src="data:image/png;base64, <%= qrBase64 %>" alt="QR Code" />
    </div>
    <% } %>
  </body>
</html>
