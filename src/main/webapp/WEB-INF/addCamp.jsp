<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/addCamp.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Document</title>
</head>
<body>
    <div id="particles-js" class="snow"></div>
    <main>
        <div class="left-side"></div>
        <div class="right-side">
            <h1><i class="fas fa-globe"></i>Add Camp</h1>
            <form action="">
                <label for="email"><i class="fas fa-envelope"></i> Camp-Name:</label><br>
                <input type="email" id="email" name="email"><br>
                <label for="password"><i class="fas fa-key"></i>Camp-Description:</label><br>
                <input type="password" id="password" name="password"><br>
                <input type="file" name="fileupload" value="fileupload" id="fileupload">
                <select class="styled-select">
                    <option value="1">⭐Default</option>
                    <option value="1"> 🏙️Ramallah</option>
                    <option value="2">🌄Nablus</option>
                    <option value="3">🌳Jenin</option>
                    <option value="4">🏞️Tulkarem</option>
                    <option value="6">🏠Bethlehem</option>
                    <option value="7">🌅Jericho</option>
                    <option value="8">🌇Qalqilya</option>
                    <option value="9">🌿Salfit</option>
                </select>
                <button class="multi-color-button" type="submit"><i class="fas fa-lock" style="margin: 2px;"></i>Create</button>
            </form>
        </div>
    </main>
</body>
</html>
