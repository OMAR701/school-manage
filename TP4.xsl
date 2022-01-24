<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Projet</title>
        <link rel="stylesheet" href="styleCode.css?version=51"/>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src='download.js'></script>
      </head>
      <body>
        <div class="sidebar">
          <h2>Gestion de scolarité</h2>
          <ul class="nav">
            <li>
              <button class="btns" onclick="showPage(0);" id="firstbtn">
                <i class="fas fa-chalkboard-teacher"></i>
                <span> Enseignants</span>
              </button>
            </li>
            <li>
              <button class="btns" onclick="showPage(1);">
                <i class="fas fa-user-graduate"></i>
                <span> Etudiants</span>
              </button>
            </li>
            <li>
              <button class="btns" onclick="showPage(2);">
                <i class="fas fa-poll-h"></i>
                <span> Modules</span>
              </button>
            </li>
            <li>
              <button class="btns" onclick="showPage(3);">
                <i class="fas fa-th"></i>
                <span> Examens</span>
              </button>
            </li>
          </ul>
            <div id='logo'>

            </div>
        </div>
        <div class='page'  id="firstpage">
          <button class="telecharger" onclick="printCertificate('ensprint');"><img src="telecharger.png" alt="telecharger" /></button>
          <center>
            <h1>Liste des enseignants :</h1>
            <div class="srch">
              <label> Chercher : </label>
              <input type="text" id="srchEns" onkeyup='search("srchEns","enstable","selectEns");'/>
              <label> Par : </label>
              <select id="selectEns">
                <option value="0">Numéro</option>
                <option value="1">CIN</option>
                <option value="2">Nom</option>
                <option value="3">Prenom</option>
                <option value="4">Telephone</option>
                <option value="5">Email</option>
              </select>
            </div>
            <div  id="ensprint">
              <table id="enstable">
                <tr>
                  <th onclick="sortBy(0,'enstable','arrowEns')"> Numéro <img src="arrowD.png" class="arrowEns" alt=""/></th>
                  <th onclick="sortBy(1,'enstable','arrowEns')"> CIN <img src="arrowD.png" class="arrowEns" alt=""/></th>
                  <th onclick="sortBy(2,'enstable','arrowEns')"> Nom <img src="arrowD.png" class="arrowEns" alt=""/></th>
                  <th onclick="sortBy(3,'enstable','arrowEns')"> Prenom <img src="arrowD.png" class="arrowEns" alt=""/></th>
                  <th onclick="sortBy(4,'enstable','arrowEns')"> Tele <img src="arrowD.png" class="arrowEns" alt=""/></th>
                  <th onclick="sortBy(5,'enstable','arrowEns')"> Email <img src="arrowD.png" class="arrowEns" alt=""/></th>
                </tr>
                <xsl:for-each select="./EST/enseignants/enseingnant">
                  <tr>
                    <td><xsl:value-of select="./@IDens"/></td>
                    <td><xsl:value-of select="./CIN" /></td>
                    <td><xsl:value-of select="./NOM" /></td>
                    <td><xsl:value-of select="./PRENOM" /></td>
                    <td><xsl:value-of select="./Tele" /></td>
                    <td><xsl:value-of select="./Email" /></td>
                  </tr>
                </xsl:for-each>
              </table>
            </div>
          </center>
        </div>
        <div class='page'>
          <button class="telecharger" onclick='printCertificateCol("etutable");'><img src="telecharger.png" alt="telecharger" /></button>
          <center>
            <h1>Liste des etudiants :</h1>
            <div class="srch">
              <label> Chercher : </label>
              <input type="text" id="srchEtu" onkeyup='search("srchEtu","etutable","selectEtu");'/>
              <label> Par : </label>
              <select id="selectEtu">
                <option value="0">Numéro</option>
                <option value="1">CIN</option>
                <option value="2">Nom</option>
                <option value="3">Prenom</option>
                <option value="4">Telephone</option>
                <option value="5">Email</option>
                <option value="6">Filiere</option>
              </select>
            </div>
            <div id="divEtu">
              <table id="etutable">
                <tr>
                  <th onclick="sortBy(0,'etutable','arrowEtu')"> Numéro <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(1,'etutable','arrowEtu')"> CIN <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(2,'etutable','arrowEtu')"> Nom <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(3,'etutable','arrowEtu')"> Prenom <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(4,'etutable','arrowEtu')"> Tele <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(5,'etutable','arrowEtu')"  > Email <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th onclick="sortBy(6,'etutable','arrowEtu')"  > Filiere <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                  <th > Relever <img src="arrowD.png" class="arrowEtu" alt=""/></th>
                </tr>
                <script>var iterEtu = 0; var clsEtu="'divRelever'"</script>
                <xsl:for-each select="./EST/etudiants/etudiant">
                  <xsl:variable name="fil" select="./@filiere" />
                  <tr>
                    <td><xsl:value-of select="./@IDEtu"/></td>
                    <td><xsl:value-of select="./CIN" /></td>
                    <td><xsl:value-of select="./NOM" /></td>
                    <td><xsl:value-of select="./PRENOM" /></td>
                    <td><xsl:value-of select="./Tele" /></td>
                    <td><xsl:value-of select="./Email" /></td>
                    <td> <xsl:value-of select="../../Filieres/filiere[$fil=@IDfil]/@NomFil" /></td>
                    <td class="btnEtu"><script>document.write('<button onclick="neWindow('+clsEtu+','+iterEtu+');">Relever </button>');iterEtu++;</script> </td>
                  </tr>
                </xsl:for-each>
              </table>
            </div>
          </center>
        </div>
        <div class='page'>
          <center>
            <h1>Liste des modules :</h1>
            <div id='modC'>
              <xsl:for-each select="./EST/modules/module">
                <xsl:variable name="coord" select="./@Coordonnateur" />
                <xsl:variable name="codeMod" select="./@IDmod" />
                <xsl:variable name="filname" select="./@filiere"/>
                <div class ="modTitle">
                  <div>
                    <h2><xsl:value-of select="./@IDmod"/> : </h2>
                    <h2><xsl:value-of select="./Nom"/></h2>
                  </div>
                  <h2>Filiere : <xsl:value-of select="../../Filieres/filiere[@IDfil=$filname]/@NomFil"/></h2>
                </div>
                <br/>
                <div class="modInfo">
                  <h4>Nom du Coordonnateur : <xsl:value-of select="../../enseignants/enseingnant[@IDens=$coord]/NOM"/>&#160;<xsl:value-of select="../../enseignants/enseingnant[@IDens=$coord]/PRENOM"/></h4>
                  <h4>Nombre des elements : <xsl:value-of select="count(../../matieres/matiere[@module=$codeMod])"/></h4>
                  <table >
                    <tr>
                      <th> Matière </th>
                      <th> Coefficient </th>
                      <th> Ensseignant </th>
                    </tr>
                    <xsl:for-each select="../../matieres/matiere[@module=$codeMod]">
                      <xsl:variable name="codeEns" select="./@enseingnat" />
                      <tr>
                        <td><xsl:value-of select="./Intitule"/></td>
                        <td><xsl:value-of select="./@coefficient" /></td>
                        <td><xsl:value-of select="../../enseignants/enseingnant[@IDens=$codeEns]/NOM"/>&#160;<xsl:value-of select="../../enseignants/enseingnant[@IDens=$codeEns]/PRENOM"/></td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </div>
                <br/>
              </xsl:for-each>
            </div>
          </center>
        </div>
        <div class='page'>
          <button class="telecharger" onclick='printCertificateCol("examtable")'><img src="telecharger.png" alt="telecharger" /></button>
          <center>
            <h1>Liste des examens :</h1>
            <div class="srch">
              <label> Chercher : </label>
              <input type="text" id="srchexam" onkeyup='search("srchexam","examtable","selectexam");'/>
              <label> Par : </label>
              <select id="selectexam">
                <option value="0">Filiere</option>
                <option value="1">Module</option>
                <option value="2">Matiere</option>
                <option value="3">Examen</option>
                <option value="4">Coefficient</option>
              </select>
            </div>
            <div id="divexam">
              <table id="examtable">
                <tr>
                  <th onclick="sortBy(0,'examtable','arrownote')"> Filiere <img src="arrowD.png" class="arrownote" alt=""/></th>
                  <th onclick="sortBy(1,'examtable','arrownote')" class="moduleNote"> Module <img src="arrowD.png" class="arrownote" alt=""/></th>
                  <th onclick="sortBy(2,'examtable','arrownote')"> Matiere <img src="arrowD.png" class="arrownote" alt=""/></th>
                  <th onclick="sortBy(3,'examtable','arrownote')"> Examen <img src="arrowD.png" class="arrownote" alt=""/></th>
                  <th onclick="sortBy(4,'examtable','arrownote')"> Coefficient <img src="arrowD.png" class="arrownote" alt=""/></th>
                  <th > Liste <img src="arrowD.png" class="arrownote" alt=""/></th>
                </tr>
                <script>var iter = 0; var cls="'divListe'"</script>
                <xsl:for-each select="./EST/Examens/exam">
                  <xsl:variable name="idmat" select="./@Matexam" />
                  <xsl:variable name="idmod" select="../../matieres/matiere[@IDMatiere=$idmat]/@module"/>
                  <xsl:variable name="idfil" select="../../modules/module[@IDmod=$idmod]/@filiere"/>
                  <tr>
                    <td><xsl:value-of select="../../Filieres/filiere[@IDfil=$idfil]/@NomFil"/></td>
                    <td class="moduleNote"><xsl:value-of select="../../modules/module[@IDmod=$idmod]/Nom"/></td>
                    <td><xsl:value-of select="../../matieres/matiere[@IDMatiere=$idmat]/Intitule"/></td>
                    <td><xsl:value-of select="./@type"/></td>
                    <td><xsl:value-of select="./@coefficient"/></td>
                    <td class="btnListe"><script>document.write('<button onclick="neWindow('+cls+','+iter+');">Liste </button>');iter++;</script> </td>
                  </tr>
                </xsl:for-each>
              </table>
            </div>
          </center>
        </div>
        <div id="divListes">
          <xsl:for-each select="./EST/Examens/exam">
            <xsl:variable name="idexa" select="./@IDexam" />
            <xsl:variable name="idmat" select="./@Matexam" />
            <div class="divListe">
              <button class="telecharger" onclick='printCertificate("noteprint")'><img src="telecharger.png" alt="telecharger" /></button>
              <div class="divList">
                <center>
                  <h1><xsl:value-of select="./@type"/> : <xsl:value-of select="../../matieres/matiere[@IDMatiere=$idmat]/Intitule"/></h1>
                  <div class="srch">
                    <label> Chercher : </label>
                    <input type="text" id="srchexam" onkeyup='search("srchexam","notetable","selectexam");'/>
                    <label> Par : </label>
                    <select id="selectexam">
                      <option value="0">CIN</option>
                      <option value="1">Nom</option>
                      <option value="2">Prenom</option>
                      <option value="3">Note</option>
                    </select>
                  </div>
                  <div id="noteprint">
                    <table id="notetable">
                      <tr>
                        <th onclick="sortBy(0,'notetable','arrowMat')"> CIN <img src="arrowD.png" class="arrowMat" alt=""/></th>
                        <th onclick="sortBy(1,'notetable','arrowMat')" > Nom <img src="arrowD.png" class="arrowMat" alt=""/></th>
                        <th onclick="sortBy(2,'notetable','arrowMat')"> Prenom <img src="arrowD.png" class="arrowMat" alt=""/></th>
                        <th onclick="sortBy(3,'notetable','arrowMat')"> Note <img src="arrowD.png" class="arrowMat" alt=""/></th>
                      </tr>
                      <xsl:for-each select="../../Notes/note[@exam=$idexa]">
                        <xsl:variable name="idetu" select="./@IDEtudiant" />
                        <tr>
                          <td><xsl:value-of select="../../etudiants/etudiant[@IDEtu=$idetu]/CIN"/></td>
                          <td><xsl:value-of select="../../etudiants/etudiant[@IDEtu=$idetu]/NOM"/></td>
                          <td><xsl:value-of select="../../etudiants/etudiant[@IDEtu=$idetu]/PRENOM"/></td>
                          <td><xsl:value-of select="./@valeur"/></td>
                        </tr>
                      </xsl:for-each>
                    </table>
                  </div>
                </center>
              </div>
            </div>
          </xsl:for-each>
          <br/><br/><br/>
        </div>
        <script> let noteMat = [];let coefMat = [];let noteMode = [];var i=0;var z=0;var y=0;var val= 0.0;</script>
        <div id="divRelevers">
          <xsl:for-each select="./EST/etudiants/etudiant">
            <script>y=0;</script>
            <xsl:variable name="IDetu" select="./@IDEtu" />
            <xsl:variable name="fil" select="./@filiere" />
            <div class="divRelever">
              <button class="telecharge" onclick='printer();'><img src="telecharger.png" alt="telecharger" /></button>
              <center>
                <h1>Relever des notes :</h1>
                <br/>
                <table class="etuInfo">
                  <tr>
                    <td><b>Nom et Prenom :</b>  <xsl:value-of select="./NOM" />&#160;&#160;<xsl:value-of select="./PRENOM" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</td>
                    <td><b>N etudiant :</b>  <xsl:value-of select="./@IDEtu" /></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><b>CIN :</b>  <xsl:value-of select="./CIN" /></td>
                  </tr>
                  <tr>
                    <td><b> Ne le : </b>  <xsl:value-of select="./DateDenaissance" /></td>
                  </tr>
                  <tr>
                    <td><b> Inscrit au : </b> <xsl:value-of select="../../Filieres/filiere[$fil=@IDfil]/@NomFil" /></td>
                  </tr>
                </table>
                <xsl:for-each select="../../modules/module[@filiere=$fil]">
                  <xsl:variable name="mod" select="./@IDmod" />
                  <script>val = 0.0;</script>
                  <xsl:for-each select="../../matieres/matiere[@module=$mod]">
                    <xsl:variable name="coefMat" select="./@coefficient" />
                    <xsl:variable name="idMat" select="./@IDMatiere" />
                    <table class="calculeTab">
                      <xsl:for-each select="../../Examens/exam[@Matexam=$idMat]">
                        <xsl:variable name="idExam" select="./@IDexam" />
                        <tr>
                          <td><xsl:value-of select="../../Notes/note[@IDEtudiant=$IDetu and @exam=$idExam]/@valeur"/></td>
                          <td><xsl:value-of select="./@coefficient" /> </td>
                        </tr>
                      </xsl:for-each>
                    </table>
                    <p class="coefTab"><xsl:value-of select="./@coefficient"/></p>
                    <script>coefMat.push(Number(document.getElementsByClassName('coefTab')[i].innerHTML));</script>
                    <script>noteMat.push(caclulerTab(i));i++;</script>
                    <script>val += coefMat[y]*noteMat[y];y++;</script>
                  </xsl:for-each>
                  <script>noteMode.push(val);</script>
                </xsl:for-each>
                <table class="releverEtu">
                  <tr>
                    <th>Intitule de modules / elements</th>
                    <th>Note/bareme</th>
                    <th>Resultat</th>
                    <th>Session</th>
                  </tr>
                  <script>j=0;z=0;val=0;</script>
                  <xsl:for-each select="../../modules/module[@filiere=$fil]">
                    <xsl:variable name="mod" select="./@IDmod" />
                    <xsl:for-each select="../../matieres/matiere[@module=$mod]">
                      <xsl:variable name="coefMat" select="./@coefficient" />
                      <xsl:variable name="idMat" select="./@IDMatiere" />
                      <tr>
                        <td><xsl:value-of select="./Intitule" /></td>
                        <td><script>document.write(noteMat[j].toFixed(2));j++;</script></td>
                        <td></td>
                        <td><xsl:value-of select="../../modules/module[@IDmod=$mod]/@semestre"/></td>
                      </tr>
                    </xsl:for-each>
                    <tr>
                      <th><xsl:value-of select="./Nom" /></th>
                      <th><script>document.write(noteMode[z].toFixed(2));z++;</script></th>
                      <th><script>validation(noteMode[z-1]); val += noteMode[z-1];</script> </th>
                      <th><xsl:value-of select="./@semestre"/></th>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td class="skip"></td>
                    <td class="skip"></td>
                    <th>Moyenne: </th>
                    <th><script>moyenne(val,z);</script></th>
                  </tr>
                </table>
              </center>
            </div>
            <script>noteMat = []; noteMode = []; coefMat = [];</script>
          </xsl:for-each>
        </div>
      </body>
      <script src="javas.js"></script>
      <script src="sort.js"></script>
      <script src="search.js"></script>
    </html>
  </xsl:template>
</xsl:stylesheet>