<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hunterpedia</title>
    <link rel="stylesheet" href="/header.css">
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
            <img src="/images/Hunter-x-Hunter-Emblem.png" alt="Hunter x Hunter Logo" width="100">
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

    <section class="container" id="main">

        <#if hunters?? && hunters?size gt 0>
            <#list hunters as hunter>
                <div class="license-card">
                    <img src="/images/${hunter.imageUrl}" alt="${hunter.name}" width="150">
                    <a href="/hunters/${hunter.hunterId}">
                        <p class="name">${hunter.name}</p>
                    </a>
                </div>
            </#list>
        <#else>
            <p>No hunters found.</p>
        </#if>

    </section>

</body>
</html>