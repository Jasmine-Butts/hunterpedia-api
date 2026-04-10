<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Hunter</title>
    <link rel="stylesheet" href="/header.css">
    <link rel="stylesheet" href="/about.css">

</head>
<body>
     <section id="header">
        <h1 id="title">Hunterpedia</h1>

        <div id="search">
            <form action="/hunters/search" method="get">
                <input type="text" id="search-input" placeholder="Search the Hunterpedia...">
                <button id="search-button" type="submit">Search</button>
            </form>   
        </div>

        <div id="logo">
            <img src="static/images/Hunter-x-Hunter-Emblem.png" alt="Hunter x Hunter Logo" width="100">
        </div>

    </section>

    <section id="nav">
        <nav>
            <ul>
                <li><a href="/hunters/all">Home</a></li>
                <li><a href="/hunters/details">Details</a></li>
                <li><a href="/hunters/about">Learn More</a></li>
                <li><a href="/hunters/new">Add a Hunter</a></li>
            </ul>
        </nav>
    </section>

    <section class="container">
        <h1>Update Hunter</h1>

        <form id="update-character" action="/hunters/update/${hunter.hunterId}" method="post">
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${hunter.name}" required>
            <br><br>

            <label for="Nen Type">Nen Type:</label>
            <input type="text" id="nen type" name="nenType" value="${hunter.nenType}" required>
            <br><br>

            <label for="Abilities">Abilities:</label>
            <textarea id="Abilities" name="abilities">${hunter.abilities}</textarea>
            <br><br>

            <label for="Background">Background:</label>
            <textarea id="Background" name="background">${hunter.background}</textarea>
            <br><br>

            <label for="image">Image URL:</label>
            <input type="text" id="image" name="imageUrl" value="${hunter.imageUrl}" required>
            <br><br>

            <button type="submit">Update Hunter</button>
        
            </form>

            <a href="/hunters/all">Back to Home</a>

</body>
</html>