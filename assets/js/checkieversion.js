/**
 *
 * This script checks version of Internet Explorer on computer,
 * and Create Corresponding Messages and make ie class visible
 *
**/

checkVersionIE();

/**
 *
 * Function getInternetExplorerVersion()
 * gets Internet Explorer Version on Windows computer
 *
 * FUNCTION RETURN:
 * * Version of Microsoft Internet Explorer (number)
 * * -1 if Page is not Opened at Internet Explorer
 *
 * NOTE! This Script must be LAST SCRIPT on Web Page!
 *
**/
function getInternetExplorerVersion()
{
  var rv = -1;
/* Check Older Versions of Internet Explorer */
  if (navigator.appName == 'Microsoft Internet Explorer')
  {
    var ua = navigator.userAgent;
    var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    if (re.exec(ua) != null)
      rv = parseFloat( RegExp.$1 );
  }
/* Check Version Internet Explorer 10 or Higher */
  else if (navigator.appName == 'Netscape')
  {
    var ua = navigator.userAgent;
    var re  = new RegExp("Trident/.*rv:([0-9]{1,}[\\.0-9]{0,})");
    if (re.exec(ua) != null)
      rv = parseFloat( RegExp.$1 );
  }
  return rv;
}

/**
 *
 * FUNCTION checkVersionIE()
 * Cchecks if Internet Explorer opens this page
 * and Does something.
 *
 * FUNCTION RETURN: Notthing
 * 
 * GLOBAL PARAMETERS:
 * * ID 'ie'
 * * ID 'nonie'
 *
 * TEMPRORARY VARIABLE FOR OUTPUT
 * * iemsg
 *
**/

function checkVersionIE()
{
/* Initialization */
  var iemsg = "<p>You're not using Internet Explorer.</p>";
  var show = "nonie";
  var ver = getInternetExplorerVersion();
  document.getElementById('ie').style.display = "none";
  document.getElementById('nonie').style.display = "none";

/* Check if any Version of Internet Explorer Using */
  if ( ver > -1 )
  {
    iemsg = "<p>You are using IE " + ver + ".</p>";
    show = "ie";
  }
/* Post Initialization */
/* Display Corresponding ID */
  document.getElementById(show).style.display = "block";
/* Print the Version of Internet Explorer */
   document.write( iemsg );
}
