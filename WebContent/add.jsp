<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
input[type=text],input[type=file], textarea {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>


<div>
  <form action="addAction" method="post" enctype="multipart/form-data">
    <label for="fname">Title</label>
    <input type="text" id="fname" name="title" placeholder="Your name..">

    <label for="lname">Content</label>
    <textarea type="text" id="lname" col="30" row ="30" name="content" placeholder="Your last name.."></textarea>

	<label for="fname">Image</label>
    <input type="file" id="fname" name="image" placeholder="Your name..">

    
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
