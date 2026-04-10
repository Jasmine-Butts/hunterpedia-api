<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Not-Found</title>
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
        <h1>404 - Hunter Not Found</h1>

        <p>Sorry, the hunter you are looking for could not be found.</p>

        <a href="/hunters/all">Return to Home</a>
    </section>

</body>
</html>