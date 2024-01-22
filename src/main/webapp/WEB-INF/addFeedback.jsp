<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/feedback.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>FeedBack</title>
</head>
<body>
    <div id="particles-js" class="snow"></div>
    <main>
        <div class="left-side"></div>
        <div class="right-side">
            <h1><i class="fas fa-comments"></i> FeedBack</h1>
            <form action="">
                <label for="email"><i class="fas fa-envelope"></i> E-mail:</label><br>
                <input type="email" id="email" name="email"><br>
                <label for="message"><i class="fas fa-pencil-alt"></i> Your FeedBack:</label><br>
                <textarea id="message" name="message"></textarea><br>
                <button class="multi-color-button" type="submit"><i class="fas fa-paper-plane"></i> Send message</button>
            </form>
        </div>
    </main>
</body>
</html>
