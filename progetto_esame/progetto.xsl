<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml" >

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" type="text/css" href="fogliodistile.css" media="screen" />
      <script src="javascript.js"> </script>
      <meta charset="UTF-8"/>
        <title>
          <xsl:value-of select="//tei:title[@xml:id='maintitle']"/>
        </title>
    </head>
    
    <body>
         <h1 class="tit"><xsl:attribute name="style">text-align: center</xsl:attribute>
             <xsl:value-of select="//tei:title[@xml:id='maintitle']"/></h1>
         
        
        <xsl:comment>Menu</xsl:comment>
             <nav class="navbar">
                 <a href="#intro" class="alink">Informazioni Generali</a>
                 <a href="#cartolina108" class="alink"> Donna con bambino </a>
                 <a href="#cartolina124" class="alink"> Primavera in fiore </a>
                 <a href="#about" class="alink">About </a>
             </nav>
        
        <!--introduzione-->
    <xsl:comment>Informazioni Generali</xsl:comment>
    <div id="intro">
      <p class="titoletto">Informazioni Generali</p>
      <p><span class="first">Collocazione:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:repository"/>, <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:settlement"/>, <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:country"/></p>
      <p><span class="first">Lingua principale:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:msContents//tei:textLang"/></p>
      <p><span class="first">Oggetto:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:objectType"/></p>
      <p><span class="first">Materiale:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:material"/></p>
      <p><span class="first">Dimensioni:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions/tei:height"/> x <xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:dimensions/tei:width"/> cm</p>
      <p><span class="first">Stato di conservazione:    </span><xsl:value-of select="//tei:fileDesc//tei:sourceDesc//tei:physDesc//tei:condition"/></p>
      <p><span class="first">Fruizione:    </span><xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:availability"/> (Consultazione online presso: <xsl:value-of select="//tei:fileDesc//tei:publicationStmt//tei:address"/>)</p>

    </div>

<!--cartolina 108-->

<div class="gridcont" id="cartolina108">

    <xsl:comment>Donna con Bambino (Cartolina 108)</xsl:comment>
      <div class="grid1">
        <xsl:comment>Dipinto sulla cartolina</xsl:comment>
           <div id="fronte108">
           <p class="titoletto">Donna con Bambino (Cartolina 108)</p>
              <xsl:element name="img">
                  <xsl:attribute name="id">fronte108</xsl:attribute>
                      <xsl:attribute name="src">
                      <xsl:value-of select="//tei:graphic[@xml:id='fronte108']/@url"/>
                  </xsl:attribute>
               </xsl:element>
            <p class="titoletto1">Fronte (Cartolina 108)</p>
            </div>
          </div>
            <div class="grid2">
                   <p class="titoletto">Descrizione</p>
                    <xsl:apply-templates select="//tei:div/tei:figure/tei:figDesc[@xml:id='desc108']"/>
           </div>
      </div>  

   
   <div class="gridcont">
         <div class="grid3">
            <div id="retro108">
              <xsl:element name="img">
                  <xsl:attribute name="id">retro108</xsl:attribute>
                      <xsl:attribute name="src">
                      <xsl:value-of select="//tei:facsimile//tei:surface//tei:graphic[@xml:id='cretro108']/@url"/>
                  </xsl:attribute>
               </xsl:element>
               <p class="titoletto1">Retro (Cartolina 108)</p>
            </div>
        </div>

            <div class="grid4">
              
              <p class="titoletto">Parte Sinistra</p>
              
              
               <p><span class="first">Messaggio:</span></p>
              <p><xsl:apply-templates select="//tei:div[@xml:id='mess108']"/> </p>
          
              <p><span class="first">Stampe sulla Cartolina:</span></p>
               <p><xsl:apply-templates select="//tei:div[@xml:id='printedLines108']"/></p>


               <p class="titoletto">Parte Destra:</p>

               <p><span class="first">Codice Cartolina:</span>
               <xsl:apply-templates select="//tei:num//tei:idno[@xml:id='n108']"/></p>

               <p><span class="first">Timbro Postale:</span>
               <xsl:apply-templates select="//tei:stamp[@xml:id='timbro108']"/></p>

               <p><span class="first">Francobollo:</span>
               <xsl:apply-templates select="//tei:stamp[@xml:id='francobollo108']"/></p>
               
               <p><span class="first">Indirizzo:</span></p>
               <p><xsl:apply-templates select="//tei:p//tei:address[@xml:id='address108']"/></p>
            
            </div>
          </div>

           <button type="submit" class="mostrainfo108" id="mostrainfo108" onclick="scopri108()">Scopri di più</button>

            <div class="grid5" id="scopri108">

              <p class="titoletto2">Note</p>
                  <xsl:element name="br"/>
                  <xsl:element name="i">
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note108']//tei:note"/>
                      <xsl:element name="br"/>
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note108']//tei:note[2]"/>
                      <xsl:element name="br"/>
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note108']//tei:note[3]"/>
                  </xsl:element>
                 

               <p class="titoletto">Persone</p>
               <ul>
                 <li> <span class="first">Mittente:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='M']//tei:persName"/>(<xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='M']//tei:sex"/>)</li>
               
                 <li> <span class="first">Destinataria:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='OT']//tei:persName"/>(<xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='OT']//tei:sex"/>)</li>
               </ul>
               
               <p class="titoletto">Luoghi</p>
               <ul>
                   <li> <span class="first">Cartolina spedita da:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='MI']//tei:placeName"/>,<xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='MI']//tei:district[@xml:id='pmi']"/></li>
               
                 <li> <span class="first">Cartolina recapitata a:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='RV']//tei:placeName"/>, <xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='RV']//tei:district[@xml:id='prv']"/></li>
               </ul>

               <p class="titoletto">Date</p>
              
               <span class="first">Cartolina spedita il:</span> <xsl:apply-templates select="//tei:profileDesc//tei:correspDesc[@xml:id='info108']//tei:date"/>
               
               <p class="titoletto">Interpretazioni editoriali</p>
              
              
              <p>"<xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list108']/tei:item/tei:choice/tei:abbr"/>"  = <xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list108']/tei:item/tei:choice/tei:expan"/></p>
             
               
            </div>

            
      
<!-- cartolina 124-->

<div class="gridcont" id="cartolina124">

    <xsl:comment>Primavera in fiore (Cartolina 124)</xsl:comment>
      <div class="grid1">
        <xsl:comment>Dipinto sulla cartolina</xsl:comment>
           <div id="fronte124">
           <p class="titoletto" id="titoletto">Primavera in fiore (Cartolina 124)</p>
              <xsl:element name="img">
                  <xsl:attribute name="id">fronte124</xsl:attribute>
                      <xsl:attribute name="src">
                      <xsl:value-of select="//tei:graphic[@xml:id='fronte124']/@url"/>
                  </xsl:attribute>
               </xsl:element>
            <p class="titoletto1">Fronte (Cartolina 124)</p>
            </div>
          </div>
            <div class="grid2">
                   <p class="titoletto">Descrizione</p>
                    <xsl:apply-templates select="//tei:div/tei:figure/tei:figDesc[@xml:id='desc124']"/>
           </div>
      </div>  

   
   <div class="gridcont">
         <div class="grid3">
            <div id="retro124">
              <xsl:element name="img">
                  <xsl:attribute name="id">retro124</xsl:attribute>
                      <xsl:attribute name="src">
                      <xsl:value-of select="//tei:facsimile//tei:surface//tei:graphic[@xml:id='retroc124']/@url"/>
                  </xsl:attribute>
               </xsl:element>
               <p class="titoletto1">Retro (Cartolina 124)</p>
            </div>
        </div>

            <div class="grid4">
              
              <p class="titoletto">Parte Sinistra</p>

               <p><span class="first">Messaggio:</span></p>
               <p><xsl:apply-templates select="//tei:div[@xml:id='mess124']"/></p>
              
          
              <p><span class="first">Stampe sulla Cartolina:</span></p>
               <p><xsl:apply-templates select="//tei:div[@xml:id='printedLines124']"/></p>
                <p><xsl:apply-templates select="//tei:sourceDesc//tei:bibl//tei:author"/>-<xsl:apply-templates select="//tei:sourceDesc//tei:bibl//tei:title[@xml:id='t124']"/></p>
                <p><xsl:apply-templates select="//tei:sourceDesc//tei:pubPlace"/></p>


               <p class="titoletto">Parte Destra:</p>

               <p><span class="first">Codice Cartolina:</span>
               <xsl:apply-templates select="//tei:num//tei:idno[@xml:id='n124']"/></p>

               <p><span class="first">Timbro Postale:</span>
               <xsl:apply-templates select="//tei:stamp[@xml:id='timbro124']"/></p>

               <p><span class="first">Francobollo:</span>
               <xsl:apply-templates select="//tei:stamp[@xml:id='francobollo124']"/></p>
               
               <p><span class="first">Indirizzo:</span></p>
               <p><xsl:apply-templates select="//tei:p//tei:address[@xml:id='address124']"/></p>
            
            </div>
          </div>

          <button type="submit" class="mostrainfo124" id="mostrainfo124" onclick="scopri124()">Scopri di più</button>

            <div class="grid5" id="scopri124">

              <p class="titoletto2">Note</p>
                  <xsl:element name="br"/>
                  <xsl:element name="i">
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note124']//tei:note"/>
                      <xsl:element name="br"/>
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note124']//tei:note[2]"/>
                      <xsl:element name="br"/>
                      <xsl:value-of select="//tei:fileDesc//tei:notesStmt[@xml:id='note124']//tei:note[3]"/>
                      </xsl:element>

               <p class="titoletto">Persone</p>
               <ul>
               <li >
                  <span class="first">Mittente:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='GC']//tei:persName"/>(<xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='GC']//tei:sex"/>)
               </li>
               <li >
                  <span class="first">Destinataria:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='AT']//tei:persName"/>(<xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='AT']//tei:sex"/>)
               </li>
                <li >
                  <span class="first">Pittore:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='CF']//tei:persName"/>(<xsl:apply-templates select="//tei:sourceDesc//tei:listPerson//tei:person[@xml:id='CF']//tei:sex"/>)
               </li>
               </ul>

               <p class="titoletto">Luoghi</p>
               <ul>
               <li >
                  <span class="first">Cartolina spedita da:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='MO']//tei:placeName"/>,<xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='MO']//tei:district[@xml:id='pmo']"/>
               </li>
               <li>
                  <span class="first">Cartolina recapitata a:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='RV']//tei:placeName"/>, <xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='RV']//tei:district[@xml:id='prv']"/>
               </li>
               <li>
                  <span class="first">Luogo di pubblicazione della cartolina:</span><xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='FI']//tei:placeName"/>, <xsl:apply-templates select="//tei:sourceDesc//tei:listPlace//tei:place[@xml:id='FI']//tei:district[@xml:id='pfi']"/>
               </li>
               </ul>

               <p class="titoletto">Date</p>
              
               <p><span class="first">Cartolina spedita il:</span> <xsl:apply-templates select="//tei:profileDesc//tei:correspDesc[@xml:id='info124']//tei:date"/></p>
             
             <p class="titoletto">Interpretazioni editoriali</p>
                    
             <ul class="note108">
               <li >
              "<xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='gentile']/tei:abbr"/>"  = <xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='gentile']/tei:expan"/>
              </li>
               <li >
              "<xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='sign']/tei:abbr"/>"  = <xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='sign']/tei:expan"/>
              </li>
              <li >
              "<xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='li']/tei:orig"/>"  = <xsl:apply-templates select="//tei:interpretation/tei:p/tei:list[@xml:id='list124']/tei:item/tei:choice[@xml:id='li']/tei:reg"/>
              </li>
              </ul>
               
            </div>
           
      
 </body> 

 

<footer>
<xsl:comment>About</xsl:comment>
   
      <div class="about" id="about">

                 <p class="titoletto">About</p>
                           <xsl:element name="p"> 
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[1]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[1]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[2]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[2]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[3]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[3]/tei:name"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[4]/tei:resp"/>: </strong>
                                <xsl:value-of select="//tei:fileDesc[1]/tei:editionStmt[1]//tei:respStmt[4]/tei:name"/>
                            </xsl:element>

                       
                            
                            <p class="titoletto">Dati editoriali:</p>
                            
                            <xsl:element name="p">
                                <strong>Edizione a cura di: </strong>
                                <xsl:value-of select="//tei:fileDesc/tei:editionStmt//tei:edition"/>
                            </xsl:element>
                            
                           
                            <xsl:element name="p">
                                <strong>Pubblicato presso: </strong>
                                <xsl:value-of select="tei:TEI//tei:fileDesc/tei:publicationStmt/tei:publisher"/>
                                <xsl:value-of select="tei:TEI//tei:fileDesc/tei:publicationStmt/tei:distributor"/>
                            </xsl:element>

                            <xsl:element name="p">
                                <strong><xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[1]/tei:resp"/></strong>
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[1]/tei:name"/> 
                            </xsl:element>
                            
                            <xsl:element name="p">
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[2]/tei:resp"/>
                                <xsl:value-of select="tei:TEI//tei:sourceDesc/tei:bibl/tei:respStmt[2]/tei:name"/>
                            </xsl:element>
                        </div>
                       
 </footer>                      
                
</html>

<!-- per rispettare gli accapo-->
</xsl:template>
<xsl:template match="//tei:lb">
      <br/> <xsl:apply-templates/>
</xsl:template>

<!-- per rispettare le righe dell'indirizzo-->
<xsl:template match="//tei:addrLine">
     <p> <xsl:apply-templates/> </p>
</xsl:template>

</xsl:stylesheet>
