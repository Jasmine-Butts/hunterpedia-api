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
            <input type="text" id="search-input" placeholder="Search the Hunterpedia...">
            <button id="search-button">Search</button>
        </div>

        <div id="logo">
            <img src="/images/Hunter-x-Hunter-Emblem.png" alt="Hunter x Hunter Logo" width="100">
        </div>

    </section>

    <section id="nav">
        <nav>
            <ul>
                <li><a href="/index.html">Home</a></li>
                <li><a href="/details.html">Details</a></li>
                <li><a href="/about.html">Learn More</a></li>
                <li><a href="/new-character-form.html">Add a Hunter</a></li>
            </ul>
        </nav>
    </section>

    <section class="container" id="main">

    <#list hunters as hunter>
            <div class="license-card">
                <img src="/images/killua.png" alt="Killua Zoldyck" width="150">
                <a href="details.html"><p class="name">${hunter.name}  </p></a>
            </div>
    </#list>
          
        <div class="license-card">
            <img src="/images/gon.png" alt="Gon Freecss" width="150">
            <p class="name">Gon Freecss</p>
        </div>
        
        <div class="license-card">
            <img src="/images/killua.png" alt="Killua Zoldyck" width="150">
            <a href="details.html"><p class="name">Killua Zoldyck</p></a>
        </div>

        <div class="license-card">
            <img src="/images/kurapika.png" alt="Kurapika" width="150">
            <p class="name">Kurapika</p>
        </div> 
            
        <div class="license-card">
            <img src="/images/leorio.png" alt="Leorio Paradinight" width="150"> 
            <p class="name">Leorio Paradinight</p>
        </div>
            
        <div class="license-card">
            <img src="/images/hisoka.png" alt="Hisoka Morow" width="150">   
            <p class="name">Hisoka Morow</p>         
        </div>
            
        <div class="license-card">
            <img src="/images/biscuit.png" alt="Biscuit Krueger" width="150">    
            <p class="name">Biscuit Krueger</p>       
        </div>
            
        <div class="license-card">
            <img src="/images/netero.png" alt="Netero" width="150"> 
            <p class="name">Chairman Isaac Netero</p>    
        </div>
          
        <div class="license-card">
            <img src="/images/illumi.png" alt="Illumi Zoldyck" width="150">            
            <p class="name">Illumi Zoldyck</p>
        </div>
          
        <div class="license-card">
            <img src="/images/alluka.png" alt="Alluka Zoldyck" width="150">   
            <p class="name">Alluka Zoldyck</p>         
        </div>

        <div class="license-card">
            <img src="/images/chrollow.png" alt="Chrollo Lucilfer" width="150">  
            <p class="name">Chrollo Lucilfer</p>          
        </div>
            
        <div class="license-card">
            <img src="/images/meruem.png" alt="Meruem" width="150">  
            <p class="name">Meruem</p>       
        </div>
          
        <div class="license-card">
            <img src="/images/komugi.jpg" alt="Komugi" width="150">    
            <p class="name">Komugi</p>
        </div>
            
        <div class="license-card">
            <img src="/images/pitou.png" alt="Neferpitou" width="150">    
            <p class="name">Neferpitou</p>     
        </div>
           
        <div class="license-card">
            <img src="/images/youpi.png" alt="Menthuthuyupi" width="150">   
            <p class="name">Menthuthuyupi</p>   
        </div>
            
        <div class="license-card">
            <img src="/images/ging.png" alt="Ging Freecss" width="150">
            <p class="name">Ging Freecss</p>
        </div>
    </section>
</body>
</html>