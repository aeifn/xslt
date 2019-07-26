<?php
   $query=$_GET['q'];

   $xslDoc=simplexml_load_file("xslt/index.xsl");
   $xmlDoc=simplexml_load_file("xml/index.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($xslDoc);
   $proc->setParameter('','query',$query);

   echo $proc->transformToXML($xmlDoc);
?>
