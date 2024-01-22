<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/CreateCity.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Create City</title>
</head>
<body>
    <div id="particles-js" class="snow"></div>
    <main>
        <div class="left-side"></div>
        <div class="right-side">
            <h1><i class="fas fa-globe"></i>Add City</h1>
            <form action="">
                <label for="cityName"><i class="fas fa-envelope"></i> City-Name:</label><br>
                <input type="text" id="cityName" name="cityName"><br>
                <label for="cityDescription"><i class="fas fa-key"></i>City-Description:</label><br>
                <input type="text" id="cityDescription" name="cityDescription"><br>
                <input type="file" name="fileupload" value="fileupload" id="fileupload">
                <button class="multi-color-button" type="submit"><i class="fas fa-lock" style="margin: 2px;"></i>Create</button>
            </form>
        </div>
    </main>
</body>
</html>
