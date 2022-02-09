<%-- 
    Document   : index
    Created on : 29 Oct 2021, 5:10:23 pm
    Author     : an
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <script> <%--javasciprt  --%>
            function clearInput(){
                document.getElementById('seq').value = "";
                document.getElementById('seq').focus();
            }
            function loadResult(){
                document.getElementById("submit").disabled= true;
                var xmlhttp;
                var URL="/condon";
                URL = URL + "?textbox1=" + document.getElementById('textbox1').value;
                URL = URL + "&seq=" + document.getElementById('seq').value;
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function (){
                    if (xmlhttp.status == 200) {
                        document.getElementById("output").innerHTML = xmlhttp.responseText;
                        document.getElementById("submit").disabled=false;
                        document.getElementById("submit").disabled=false;
                    }
                }
                xmlhttp.open("GET", URL, true);
                xmlhttp.send();
                document.getElementById("submit").disabled=false;
        }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bbbCodon Optimiser for N. Benthamiana genome</title>
    </head>
    <body>
        <h1>Codon Optimiser for N. Benthamiana genome</h1>
        <table>
            <tr>
                <td><button type="button" id="clear" onclick="clearInput()">Clear</button> Nucleotide sequence 
                </td>
            </tr>
            <tr>
                <td>
                    <textarea id="seq" rows = "15" cols = "160" name = "description">ATGGCCAAAACAAACCTGTTTCTCTTCCTTATTTTCAGCTTGCTCCTGAGTTTGTCATCCGCTCAGGTGAAGTTGATAGAAAGTGGACCTGGTCTGGTCAAGCCCTCACAGACATTGAGCCTTACATGCACGGTCACCGGTGGTTCTATTACGTCATACGCAATTTCTTGGATCAGACAAGCCCCGGGAAAGGGGTTGGAATACATGGGAGGTATTATTCCAATCTTCGGGACAGCAAACTACGCTCAAAAGTTCCAAGGAAGGGCTAGCATCTCTAGAGATACTTCAAAAAATCAATTTTCACTTCAACTCAGCTCCGTAACTACCGAAGACACAGCCGTCTATTATTGTGCTCGAGCCCCTCTCCGTTTCCTTGAGTGGAGCACACAGGATCATTATTATTATTACTATATGGACGTATGGGGTAAAGGGACAACGGTGACAGTCTCCAGTGCTTCTACAACAGCCCCTAAAGTTTTCGCCTTAGCTCCCGGATGTGGTACCACTAGCGATTCCACCGTAGCACTGGGGTGCTTAGTCAGCGGATATTTTCCAGAACCGGTTAAGGTATCTTGGAACTCCGGGAGTTTGACCTCCGGTGTTCACACATTCCCATCTGTTCTCCAGTCATCCGGCTTCTATAGCCTCTCAAGTATGGTGACCGTACCAGCAAGCACATGGACGTCCGAAACATACATATGTAACGTAGTTCACGCCGCAAGCAATTTTAAAGTGGACAAGAGGATTGAGCCCATCCCGGACAATCACCAAAAAGTGTGCGATATGAGTAAATGCCCCAAATGTCCGGCCCCCGAAGCAGCAGGAGCACCATCCGTGTTTATATTCCCGCCGAACCCCAAGGACACTCTTATGATAACGAGAACTCCAGAAGTAACGTGCGTAGTCGTCGATGTCTCCCAAGAAAACCCTGACGTCAAATTCAACTGGTATATGGACGGAGTTGAGGTTCGTACGGCCACCACAAGACCTAAAGAGGAGCAGTTCAATAGCACGTATCGAGTGGTAAGCGTTTTGAGGATCCAACATCAGGACTGGCTGAGTGGAAAAGAATTCAAGTGCAAGGTAAATAACCAAGCTCTCCCGCAGCCCATCGAGCGTACTATAACAAAAACTAAGGGAAGGTCACAAGAGCCTCAAGTCTATGTGCTCGCCCCTCACCCAGACGAGCTCAGCAAGAGCAAAGTCTCAGTCACTTGTCTTGTAAAGGACTTCTATCCACCGGAGATAAACATCGAGTGGCAGTCTAATGGACAACCAGAGCTTGAAACAAAATATTCTACAACCCAGGCTCAGCAGGACTCTGACGGGAGTTACTTTCTGTACTCCAAGCTCTCTGTTGATAGGAACAGATGGCAGCAGGGCACGACCTTCACTTGCGGAGTAATGCACGAGGCTCTGCATAACCACTATACGCAGAAAAACGTTAGTAAGAACCCCGGGAAATGA</textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <button type="button" id="submit" onclick="loadResult()">Submit</button>
                         Number of top potential introns
                    <INPUT TYPE="TEXT" id="textbox1" NAME="textbox1" value="30">
                </td>
            </tr>
            <tr>
                <td>potential introns and overall score (P-value)
                </td>
            </tr>
            <tr>
                <td>
                    <textarea readonly id="output" rows = "20" cols = "160" name = "description"></textarea>
                </td>
            </tr>
        </table>

    </body>
</html>
