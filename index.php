<?php

   $xslDoc = new DOMDocument();
   $xslDoc->load("site.xsl");

   $xmlDoc = new DOMDocument();
   $xmlDoc->load("site.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($xslDoc);
   echo $proc->transformToXML($xmlDoc);

?>
