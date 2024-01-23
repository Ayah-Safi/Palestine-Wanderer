<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/addBookActivity.css">
    <title>Document</title>
</head>
<body>
    <div id="particles-js" class="snow"></div>
    <main>
        <div class="left-side"></div>
        <div class="right-side">
            <form action="/home/activityThankYou">
                <div class="btn-group"></div>
                <h1><i class="fa fa-globe"></i> Event Booking</h1>
                <div class="container">
                    <div class="select">
                        <h4><i class="fa fa-map-marker"></i> Select your destination city:</h4>
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
                    </div>
                </div>
                <div class="container">
                    <div class="select">
                        <h4><i class="fa fa-tasks"></i> Choose an activity:</h4>
                        <select class="styled-select">
                            <option value="1">⭐Default</option>
                            <option value="2"> 🥾Hiking Adventure</option>
                            <option value="3"> 🏠Spend a Day Living with a Palestinian Family</option>
                            <option value="4"> 🚶‍♂️Tour the entire city on your own</option>
                            <option value="5"> 👥Tour the entire city with a group</option>
                        </select>
                    </div>
                </div>
                <label for="name"><i class="fa fa-user"></i> Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name">

                <label for="email"><i class="fa fa-envelope"></i> E-mail:</label>
                <input type="email" id="email" name="email" placeholder="Enter your e-mail">

                <label for="phone"><i class="fa fa-phone"></i> Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number">

                <label for="message"><i class="fa fa-pencil-alt"></i> Note:</label>
                <textarea id="message" name="message" placeholder="Enter your note"></textarea>

                <!-- Submit Button -->
                <button class="multi-color-button" type="submit"><i class="fa fa-paper-plane"></i>Submit</button>
                
            </form>
            <div class="back-section">
        <a href="/home" id="back-button" ><img alt="key-icon" src="../images/displayCity/key.png" >Back to Palestine</a>
    		</div>
        </div>
    </main>
    
</body>
</html>
