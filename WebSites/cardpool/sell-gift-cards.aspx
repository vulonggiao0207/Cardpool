<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sell-gift-cards.aspx.cs" Inherits="sell_gift_cards" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <title>Gift Card Exchange - Buy, Sell, and Trade Gift Cards Online | Cardpool</title>
    <style type="text/css">
        .modalBackground 
        {
            background-color:#333333;
            filter:alpha(opacity=70);
            opacity:0.7;    
            overflow:scroll;    
        }      
    </style> 
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta http-equiv="author" content="Cardpool, Inc.">  
  <meta name="description" content="Buy discounted gift cards up to 35% off, sell gift cards for cash, or trade gift cards at the most trusted and most popular gift card exchange.">
  <link href="Styles/base_packaged.css" media="all" rel="stylesheet" type="text/css">
  <!--  <link href="/stylesheets/print.css" media="print" rel="stylesheet" type="text/css" /> -->
  <!--[if lte IE 7]>
    <link href="/stylesheets/ie67_packaged.css?1327020228" media="screen" rel="stylesheet" type="text/css" />
  <![endif]-->

  <script src="css/base_packaged.js" type="text/javascript"></script>
  <!--[if lte IE 6]>
    <script src="/javascripts/ie6_packaged.js?1327020227" type="text/javascript"></script>
  <![endif]-->

 

  

  <script type="text/javascript">
      // Appease XHTML validation:
      // <![CDATA[ 
      $(document).ready(function () {
          Navigation.init();
          OverlayForms.init(false);
          ShoppingCart.init(false);
          FeedbackForm.init();
          Main.init();
          Tracking.init();
          Ratings.init();


      });
      // ]]>
  </script>

<style type="text/css" charset="utf-8">/* See license.txt for terms of usage */

/** reset styling **/

.firebugResetStyles {

    z-index: 2147483646 !important;

    top: 0 !important;

    left: 0 !important;

    display: block !important;

    border: 0 none !important;

    margin: 0 !important;

    padding: 0 !important;

    outline: 0 !important;

    min-width: 0 !important;

    max-width: none !important;

    min-height: 0 !important;

    max-height: none !important;

    position: fixed !important;

    -moz-transform: rotate(0deg) !important;

    -moz-transform-origin: 50% 50% !important;

    -moz-border-radius: 0 !important;

    -moz-box-shadow: none !important;

    background: transparent none !important;

    pointer-events: none !important;

}



.firebugBlockBackgroundColor {

    background-color: transparent !important;

}



.firebugResetStyles:before, .firebugResetStyles:after {

    content: "" !important;

}

/**actual styling to be modified by firebug theme**/

.firebugCanvas {

    display: none !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBox {

    width: auto !important;

    position: static !important;

}



.firebugLayoutBoxOffset {

    opacity: 0.8 !important;

    position: fixed !important;

}



.firebugLayoutLine {

    opacity: 0.4 !important;

    background-color: #000000 !important;

}



.firebugLayoutLineLeft, .firebugLayoutLineRight {

    width: 1px !important;

    height: 100% !important;

}



.firebugLayoutLineTop, .firebugLayoutLineBottom {

    width: 100% !important;

    height: 1px !important;

}



.firebugLayoutLineTop {

    margin-top: -1px !important;

    border-top: 1px solid #999999 !important;

}



.firebugLayoutLineRight {

    border-right: 1px solid #999999 !important;

}



.firebugLayoutLineBottom {

    border-bottom: 1px solid #999999 !important;

}



.firebugLayoutLineLeft {

    margin-left: -1px !important;

    border-left: 1px solid #999999 !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBoxParent {

    border-top: 0 none !important;

    border-right: 1px dashed #E00 !important;

    border-bottom: 1px dashed #E00 !important;

    border-left: 0 none !important;

    position: fixed !important;

    width: auto !important;

}



.firebugRuler{

    position: absolute !important;

}



.firebugRulerH {

    top: -15px !important;

    left: 0 !important;

    width: 100% !important;

    height: 14px !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%13%88%00%00%00%0E%08%02%00%00%00L%25a%0A%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%04%F8IDATx%DA%EC%DD%D1n%E2%3A%00E%D1%80%F8%FF%EF%E2%AF2%95%D0D4%0E%C1%14%B0%8Fa-%E9%3E%CC%9C%87n%B9%81%A6W0%1C%A6i%9A%E7y%0As8%1CT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AATE9%FE%FCw%3E%9F%AF%2B%2F%BA%97%FDT%1D~K(%5C%9D%D5%EA%1B%5C%86%B5%A9%BDU%B5y%80%ED%AB*%03%FAV9%AB%E1%CEj%E7%82%EF%FB%18%BC%AEJ8%AB%FA'%D2%BEU9%D7U%ECc0%E1%A2r%5DynwVi%CFW%7F%BB%17%7Dy%EACU%CD%0E%F0%FA%3BX%FEbV%FEM%9B%2B%AD%BE%AA%E5%95v%AB%AA%E3E5%DCu%15rV9%07%B5%7F%B5w%FCm%BA%BE%AA%FBY%3D%14%F0%EE%C7%60%0EU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5JU%88%D3%F5%1F%AE%DF%3B%1B%F2%3E%DAUCNa%F92%D02%AC%7Dm%F9%3A%D4%F2%8B6%AE*%BF%5C%C2Ym~9g5%D0Y%95%17%7C%C8c%B0%7C%18%26%9CU%CD%13i%F7%AA%90%B3Z%7D%95%B4%C7%60%E6E%B5%BC%05%B4%FBY%95U%9E%DB%FD%1C%FC%E0%9F%83%7F%BE%17%7DkjMU%E3%03%AC%7CWj%DF%83%9An%BCG%AE%F1%95%96yQ%0Dq%5Dy%00%3Et%B5'%FC6%5DS%95pV%95%01%81%FF'%07%00%00%00%00%00%00%00%00%00%F8x%C7%F0%BE%9COp%5D%C9%7C%AD%E7%E6%EBV%FB%1E%E0(%07%E5%AC%C6%3A%ABi%9C%8F%C6%0E9%AB%C0'%D2%8E%9F%F99%D0E%B5%99%14%F5%0D%CD%7F%24%C6%DEH%B8%E9rV%DFs%DB%D0%F7%00k%FE%1D%84%84%83J%B8%E3%BA%FB%EF%20%84%1C%D7%AD%B0%8E%D7U%C8Y%05%1E%D4t%EF%AD%95Q%BF8w%BF%E9%0A%BF%EB%03%00%00%00%00%00%00%00%00%00%B8vJ%8E%BB%F5%B1u%8Cx%80%E1o%5E%CA9%AB%CB%CB%8E%03%DF%1D%B7T%25%9C%D5(%EFJM8%AB%CC'%D2%B2*%A4s%E7c6%FB%3E%FA%A2%1E%80~%0E%3E%DA%10x%5D%95Uig%15u%15%ED%7C%14%B6%87%A1%3B%FCo8%A8%D8o%D3%ADO%01%EDx%83%1A~%1B%9FpP%A3%DC%C6'%9C%95gK%00%00%00%00%00%00%00%00%00%20%D9%C9%11%D0%C0%40%AF%3F%EE%EE%92%94%D6%16X%B5%BCMH%15%2F%BF%D4%A7%C87%F1%8E%F2%81%AE%AAvzr%DA2%ABV%17%7C%E63%83%E7I%DC%C6%0Bs%1B%EF6%1E%00%00%00%00%00%00%00%00%00%80cr%9CW%FF%7F%C6%01%0E%F1%CE%A5%84%B3%CA%BC%E0%CB%AA%84%CE%F9%BF)%EC%13%08WU%AE%AB%B1%AE%2BO%EC%8E%CBYe%FE%8CN%ABr%5Dy%60~%CFA%0D%F4%AE%D4%BE%C75%CA%EDVB%EA(%B7%F1%09g%E5%D9%12%00%00%00%00%00%00%00%00%00H%F6%EB%13S%E7y%5E%5E%FB%98%F0%22%D1%B2'%A7%F0%92%B1%BC%24z3%AC%7Dm%60%D5%92%B4%7CEUO%5E%F0%AA*%3BU%B9%AE%3E%A0j%94%07%A0%C7%A0%AB%FD%B5%3F%A0%F7%03T%3Dy%D7%F7%D6%D4%C0%AAU%D2%E6%DFt%3F%A8%CC%AA%F2%86%B9%D7%F5%1F%18%E6%01%F8%CC%D5%9E%F0%F3z%88%AA%90%EF%20%00%00%00%00%00%00%00%00%00%C0%A6%D3%EA%CFi%AFb%2C%7BB%0A%2B%C3%1A%D7%06V%D5%07%A8r%5D%3D%D9%A6%CAu%F5%25%CF%A2%99%97zNX%60%95%AB%5DUZ%D5%FBR%03%AB%1C%D4k%9F%3F%BB%5C%FF%81a%AE%AB'%7F%F3%EA%FE%F3z%94%AA%D8%DF%5B%01%00%00%00%00%00%00%00%00%00%8E%FB%F3%F2%B1%1B%8DWU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*UiU%C7%BBe%E7%F3%B9%CB%AAJ%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5*%AAj%FD%C6%D4%5Eo%90%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5%86%AF%1B%9F%98%DA%EBm%BBV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%AD%D6%E4%F58%01%00%00%00%00%00%00%00%00%00%00%00%00%00%40%85%7F%02%0C%008%C2%D0H%16j%8FX%00%00%00%00IEND%AEB%60%82") repeat-x !important;

    border-top: 1px solid #BBBBBB !important;

    border-right: 1px dashed #BBBBBB !important;

    border-bottom: 1px solid #000000 !important;

}



.firebugRulerV {

    top: 0 !important;

    left: -15px !important;

    width: 14px !important;

    height: 100% !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%00%0E%00%00%13%88%08%02%00%00%00%0E%F5%CB%10%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%06~IDATx%DA%EC%DD%D1v%A20%14%40Qt%F1%FF%FF%E4%97%D9%07%3BT%19%92%DC%40(%90%EEy%9A5%CB%B6%E8%F6%9Ac%A4%CC0%84%FF%DC%9E%CF%E7%E3%F1%88%DE4%F8%5D%C7%9F%2F%BA%DD%5E%7FI%7D%F18%DDn%BA%C5%FB%DF%97%BFk%F2%10%FF%FD%B4%F2M%A7%FB%FD%FD%B3%22%07p%8F%3F%AE%E3%F4S%8A%8F%40%EEq%9D%BE8D%F0%0EY%A1Uq%B7%EA%1F%81%88V%E8X%3F%B4%CEy%B7h%D1%A2E%EBohU%FC%D9%AF2fO%8BBeD%BE%F7X%0C%97%A4%D6b7%2Ck%A5%12%E3%9B%60v%B7r%C7%1AI%8C%BD%2B%23r%00c0%B2v%9B%AD%CA%26%0C%1Ek%05A%FD%93%D0%2B%A1u%8B%16-%95q%5Ce%DCSO%8E%E4M%23%8B%F7%C2%FE%40%BB%BD%8C%FC%8A%B5V%EBu%40%F9%3B%A72%FA%AE%8C%D4%01%CC%B5%DA%13%9CB%AB%E2I%18%24%B0n%A9%0CZ*Ce%9C%A22%8E%D8NJ%1E%EB%FF%8F%AE%CAP%19*%C3%BAEKe%AC%D1%AAX%8C*%DEH%8F%C5W%A1e%AD%D4%B7%5C%5B%19%C5%DB%0D%EF%9F%19%1D%7B%5E%86%BD%0C%95%A12%AC%5B*%83%96%CAP%19%F62T%86%CAP%19*%83%96%CA%B8Xe%BC%FE)T%19%A1%17xg%7F%DA%CBP%19*%C3%BA%A52T%86%CAP%19%F62T%86%CA%B0n%A9%0CZ%1DV%C6%3D%F3%FCH%DE%B4%B8~%7F%5CZc%F1%D6%1F%AF%84%F9%0F6%E6%EBVt9%0E~%BEr%AF%23%B0%97%A12T%86%CAP%19%B4T%86%CA%B8Re%D8%CBP%19*%C3%BA%A52huX%19%AE%CA%E5%BC%0C%7B%19*CeX%B7h%A9%0C%95%E1%BC%0C%7B%19*CeX%B7T%06%AD%CB%5E%95%2B%BF.%8F%C5%97%D5%E4%7B%EE%82%D6%FB%CF-%9C%FD%B9%CF%3By%7B%19%F62T%86%CA%B0n%D1R%19*%A3%D3%CA%B0%97%A12T%86uKe%D0%EA%B02*%3F1%99%5DB%2B%A4%B5%F8%3A%7C%BA%2B%8Co%7D%5C%EDe%A8%0C%95a%DDR%19%B4T%C66%82fA%B2%ED%DA%9FC%FC%17GZ%06%C9%E1%B3%E5%2C%1A%9FoiB%EB%96%CA%A0%D5qe4%7B%7D%FD%85%F7%5B%ED_%E0s%07%F0k%951%ECr%0D%B5C%D7-g%D1%A8%0C%EB%96%CA%A0%A52T%C6)*%C3%5E%86%CAP%19%D6-%95A%EB*%95q%F8%BB%E3%F9%AB%F6%E21%ACZ%B7%22%B7%9B%3F%02%85%CB%A2%5B%B7%BA%5E%B7%9C%97%E1%BC%0C%EB%16-%95%A12z%AC%0C%BFc%A22T%86uKe%D0%EA%B02V%DD%AD%8A%2B%8CWhe%5E%AF%CF%F5%3B%26%CE%CBh%5C%19%CE%CB%B0%F3%A4%095%A1%CAP%19*Ce%A8%0C%3BO*Ce%A8%0C%95%A12%3A%AD%8C%0A%82%7B%F0v%1F%2FD%A9%5B%9F%EE%EA%26%AF%03%CA%DF9%7B%19*Ce%A8%0C%95%A12T%86%CA%B8Ze%D8%CBP%19*Ce%A8%0C%95%D1ae%EC%F7%89I%E1%B4%D7M%D7P%8BjU%5C%BB%3E%F2%20%D8%CBP%19*Ce%A8%0C%95%A12T%C6%D5*%C3%5E%86%CAP%19*Ce%B4O%07%7B%F0W%7Bw%1C%7C%1A%8C%B3%3B%D1%EE%AA%5C%D6-%EBV%83%80%5E%D0%CA%10%5CU%2BD%E07YU%86%CAP%19*%E3%9A%95%91%D9%A0%C8%AD%5B%EDv%9E%82%FFKOee%E4%8FUe%A8%0C%95%A12T%C6%1F%A9%8C%C8%3D%5B%A5%15%FD%14%22r%E7B%9F%17l%F8%BF%ED%EAf%2B%7F%CF%ECe%D8%CBP%19*Ce%A8%0C%95%E1%93~%7B%19%F62T%86%CAP%19*Ce%A8%0C%E7%13%DA%CBP%19*Ce%A8%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4%AE%A4%F5%25%C0%00%DE%BF%5C'%0F%DA%B8q%00%00%00%00IEND%AEB%60%82") repeat-y !important;

    border-left: 1px solid #BBBBBB !important;

    border-right: 1px solid #000000 !important;

    border-bottom: 1px dashed #BBBBBB !important;

}



.overflowRulerX > .firebugRulerV {

    left: 0 !important;

}



.overflowRulerY > .firebugRulerH {

    top: 0 !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.fbProxyElement {

    position: fixed !important;

    pointer-events: auto !important;

}</style></head>

<body>
    <form id="form1" runat="server">
  <div id="feedback_link_bar"></div>
  <div class="container">
    
    <div id="header" class="span-24 last">
      <table class="layout">
        <tbody><tr>
          <td style="vertical-align: bottom; width: 25%;">
            <div class="logo">
              
          <a href="http://www.cardpool.com/"><img alt="Cardpool - Gift Card Exchange" class="ie6_hack_png_fix" src="images/logo_146x48.png" width="146" height="48"></a>            </div>
          </td>
          <td style="vertical-align: middle; width: 50%;">
            <div style="text-align: center; margin: 5px;">
              <a href="jobs.aspx"><strong style="background-color: #FFFFAA;">We are hiring engineers, designers, and more!</strong></a>            </div>
            <div class="slogan" style="margin: 5px;">
              <a href="http://www.cardpool.com/support/how-it-works" class="ga_track_event:category=clicks:action=how_it_works:opt_label=header">Free Shipping and 100-Day Purchase Guarantee</a><br>
            </div>
          </td>
          <td style="vertical-align: bottom; width: 25%; text-align: right;">
            <div class="links">
                
                <a href="#" class="signup_link">Sign Up</a> <span class="separator">|</span>
                <a href="#" class="login_link">Login</a>
              
            </div>
            <div class="contact">
              <a href="how-it-works.aspx" style="font-size: 14px;">Questions?  Contact Us</a>            </div>
          </td>
        </tr>
      </tbody></table>
    </div>
  <!--vavigator-->  
     <div id="main_nav" class="span-24 last">
	<ul>
	<li><a href="buy-gift-cards.aspx">Buy gift cards</a></li>
	<li><a href="sell-gift-cards.aspx">Sell gift cards</a>
	<ul>
		<li><a href="sell-gift-cards.aspx">Sell gift cards for cash</a></li>
		<li><a href="gift-cards-for-amazon-gift-card.aspx">Sell gift cards for Amazon.com gift card</a></li>
	</ul>	
	</li>
	<li><a href="wishlist.aspx">Manage Wishlist</a></li>
	<li><a href="how-it-works.aspx">How it work?</a>
	<ul>
		<li><a href="how-it-works.aspx">How does cardpool work?</a></li>
		<li><a href="how-to-buy-gift-cards.aspx">How do I buy Discount Giftcards?</a></li>
		<li><a href="how-to-sell-gift-cards.aspx">How do I sell Giftcards for cash?</a></li>
	</ul>
	</li>
	</ul>
<!-- END vavigator-->  
      <div class="right">
          <asp:ScriptManager ID="ScriptManager1" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
          	 <asp:LinkButton ID="CartLink" runat="server" Font-Size="12pt" 
              Text="Shopping Car (0)" />


 <!---------------------Shoppingcar---------------->
              <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
              DropShadow="True"
                               PopupControlID="Panel1" TargetControlID="CartLink" 
                               BackgroundCssClass="modalBackground " BehaviorID="bePopup"
                               CancelControlID="CancelButton" OkControlID="OKButton"
                                RepositionMode="RepositionOnWindowResizeAndScroll">
              </asp:ModalPopupExtender>


             <asp:Panel ID="Panel1" runat="server" BorderColor="#68A0E7" BorderStyle="Solid"  
                                                  BorderWidth="5px" Width="680px" BackColor="LightGray" Style="display: none;width:700px; height:400px; overflow:scroll;">
               <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                <ContentTemplate>    
                     <asp:GridView ID="ShoppingCartGridView" runat="server" Width="680px" AutoGenerateColumns="False" onrowcommand="ShoppingCartGridView_RowCommand">
                        <Columns>
                        <asp:TemplateField 
                                HeaderText="MerchantID" Visible="False"><ItemTemplate><asp:Label ID="MerchantIDLabel" 
                                    runat="server" Text='<%# Eval("Details[0].MerchantID") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:BoundField 
                                DataField="CardName" HeaderText="Merchant" /><asp:TemplateField><ItemTemplate><asp:Image 
                                    ID="Image1" runat="server" Height="32px" ImageUrl='<%# Eval("Image") %>' 
                                    Width="50px" /></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="Value"><ItemTemplate>$<asp:Label ID="Label3" runat="server" 
                                    Text='<%# Eval("Details[0].Value") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="You Pay"><ItemTemplate>$<asp:Label ID="Label4" runat="server" 
                                        Text='<%# Eval("Details[0].Pay") %>'></asp:Label></ItemTemplate></asp:TemplateField><asp:TemplateField 
                                HeaderText="You Save"><ItemTemplate><asp:Label ID="Label5" runat="server" 
                                        Text='<%# Eval("Details[0].Save") %>'></asp:Label>%</ItemTemplate></asp:TemplateField><asp:ButtonField 
                                        CommandName="RemoveFromCart" Text="Remove"><ControlStyle BackColor="Blue" 
                                ForeColor="White" />
                        </asp:ButtonField>
                        </Columns>
                   </asp:GridView>
                    </ContentTemplate>  
                    </asp:UpdatePanel>     
                     <center> <asp:Button ID="CancelButton" runat="server" Text="Continue shopping" /><asp:Button ID="OKButton" runat="server" Text="Checkout" /></center>
                    </asp:Panel>    

              </ContentTemplate>
          <Triggers>
          <asp:AsyncPostBackTrigger ControlID="ShoppingCartGridView" EventName="RowCommand" />
          </Triggers>
          </asp:UpdatePanel>
              
	  </div>
    </div>   
   <!-----------------END--------------------->
   <div id="main_content" class="span-24 last">
<div class="raised_box">
<div class="box_top_right">
<div class="box_top_left"></div>
</div>
<div class="box_middle_right">
<div class="box_middle_left">
<div class="content">
<div class="box_header_extra_spacing">
<h1>Sell gift cards for up to 92% cash back and get free shipping on all transactions.</h1>
<h3>
<span class="yellow">New! Sell gift cards electronically on select merchants - no mailing required!</span>
</h3>
</div>
<table class="layout">
<tbody>
<tr>
<td>
<table class="giftcards_big_grid bottom">
<tbody>
<tr>
<td>
&nbsp;<asp:Image ID="CardImage0" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
    <asp:Image ID="CardImage1" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
&nbsp;</td>
<td>
    <asp:Image ID="CardImage2" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
&nbsp;</td>
</tr>
<tr>
<td>
&nbsp;<asp:Image ID="CardImage3" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
    <asp:Image ID="CardImage4" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
&nbsp;</td>
<td>
    <asp:Image ID="CardImage5" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
&nbsp;</td>
</tr>
</tbody>
</table>
</td>
<td style="padding: 0 20px;">
<img width="150" src="images/piggy_bank.jpg" alt="Sell Gift Cards For Cash">
</td>
<td>
<table class="giftcards_big_grid bottom">
<tbody>
<tr>
<td>
&nbsp;<asp:Image ID="CardImage6" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
&nbsp;<asp:Image ID="CardImage7" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
&nbsp;<asp:Image ID="CardImage8" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
</tr>
<tr>
<td>
&nbsp;<asp:Image ID="CardImage9" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
&nbsp;<asp:Image ID="CardImage10" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
<td>
&nbsp;<asp:Image ID="CardImage11" runat="server" Height="58px" 
        ImageUrl="~/images/CardImages/no_images.jpg" Width="92px" />
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div class="box_bottom_right">
<div class="box_bottom_left"></div>
</div>
</div>
<!------------->
<div class="blue_box" style="text-align: center;">
<h4 class="bottom">
<a href="/sell/offers">We saved your previous offers. Click here to view your existing offers</a>
.
</h4>
</div>
<!-------------span-12--------------->
<div class="span-12" style="margin-bottom: 20px;">
  <div class="raised_box_with_header">
    <div class="box_top_right"><div class="box_top_left"><div class="header">Sell Gift Card</div></div></div>
    <div class="box_middle_right"><div class="box_middle_left"><div class="content">
      <form action="/sell-card" class="new_card" id="new_card" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="rvIO7a2CozN6LwJ2rHT9oaZb+BGK5E8My8+JM1Tn3tk=" type="hidden"></div>        <table class="bottom">
          <tbody><tr>
            <td>
              <label for="card_merchant_id">Merchant</label><br>
              <select class="input_large_300 merchant_select" id="card_merchant_id" name="card[merchant_id]"><option value=""></option>
<option value="106">1-800-Flowers.com</option>
<option value="280">1-800-PetSupplies.com</option>
<option value="399">24 Hour Fitness</option>
<option value="179">76 Gas</option>
<option value="181">A Pea in the Pod</option>
<option value="182">A.C. Moore</option>
<option value="1">Abercrombie &amp; Fitch</option>
<option value="183">Ace Hardware</option>
<option value="271">Acme</option>
<option value="184">Adidas</option>
<option value="2">Aeropostale</option>
<option value="146">Albertsons</option>
<option value="232">ALDO</option>
<option value="3">AMC Theatres</option>
<option value="185">American Apparel</option>
<option value="5">American Eagle Outfitters</option>
<option value="186">American Girl</option>
<option value="7">Ann Taylor</option>
<option value="8">Anthropologie</option>
<option value="9">Apple Store (not iTunes)</option>
<option value="10">Applebee's</option>
<option value="278">Arby's</option>
<option value="270">ARCO</option>
<option value="187">Armani Exchange</option>
<option value="357">Ashley Stewart</option>
<option value="11">Athleta</option>
<option value="362">Aveda</option>
<option value="12">Babies R Us</option>
<option value="297">Baby Gap</option>
<option value="13">Bahama Breeze</option>
<option value="149">Baja Fresh</option>
<option value="233">Ballard Designs</option>
<option value="14">Banana Republic</option>
<option value="15">Barnes &amp; Noble</option>
<option value="150">Barney's New York</option>
<option value="16">Bass Pro Shops</option>
<option value="17">Bath &amp; Body Works</option>
<option value="133">Bebe</option>
<option value="18">Bed Bath and Beyond</option>
<option value="311">BedandBreakfast.com</option>
<option value="234">Benihana</option>
<option value="19">Best Buy</option>
<option value="151">Best Western</option>
<option value="320">BevMo</option>
<option value="355">Big Boy</option>
<option value="189">Black Angus</option>
<option value="21">Bloomingdale's</option>
<option value="236">Bob Evans Restaurant</option>
<option value="402">Bojangles'</option>
<option value="22">Bonefish Grill</option>
<option value="190">Boscov's</option>
<option value="24">BP</option>
<option value="342">Bravo! Cucina Italiana</option>
<option value="25">Brooks Brothers</option>
<option value="392">Brookshire's Food &amp; Pharmacy</option>
<option value="139">Brookstone</option>
<option value="376">Bubba Gump Shrimp Co</option>
<option value="192">Buca di Beppo</option>
<option value="193">Buckle</option>
<option value="237">Buffalo Wild Wings</option>
<option value="263">Build-A-Bear</option>
<option value="194">Burberry</option>
<option value="195">Burger King</option>
<option value="26">Burlington Coat Factory</option>
<option value="352">Burton</option>
<option value="138">Cabela's</option>
<option value="27">California Pizza Kitchen</option>
<option value="152">Capital Grille</option>
<option value="306">Caribou Coffee</option>
<option value="385">Carnival Cruise Line</option>
<option value="28">Carrabba's Italian Grill</option>
<option value="314">Carson Pirie Scott</option>
<option value="348">Carter's</option>
<option value="363">Cato</option>
<option value="196">CB2</option>
<option value="359">Charlie Brown</option>
<option value="327">Cheeseburger in Paradise</option>
<option value="29">Cheesecake Factory</option>
<option value="136">Chevron Texaco</option>
<option value="238">Chick-fil-A</option>
<option value="30">Chico's</option>
<option value="31">Chili's</option>
<option value="32">Chipotle</option>
<option value="322">Choice Hotels International</option>
<option value="239">Christopher &amp; Banks</option>
<option value="339">Chuck E. Cheese's</option>
<option value="367">Cinema De Lux</option>
<option value="130">Cinemark</option>
<option value="301">Circle K</option>
<option value="265">Citgo</option>
<option value="121">Claire's</option>
<option value="108">Coach</option>
<option value="33">Cold Stone Creamery</option>
<option value="153">Coldwater Creek</option>
<option value="300">Cole Haan</option>
<option value="330">Coleman</option>
<option value="240">Columbia Sportswear</option>
<option value="318">Converse</option>
<option value="144">Costco</option>
<option value="142">Cracker Barrel</option>
<option value="34">Crate &amp; Barrel</option>
<option value="341">Crutchfield</option>
<option value="351">Cub Foods</option>
<option value="35">CVS</option>
<option value="277">Dairy Queen</option>
<option value="338">Damon's Grill</option>
<option value="154">Darden Restaurants</option>
<option value="36">Dave and Busters</option>
<option value="310">Dean &amp; DeLuca</option>
<option value="369">Del Taco</option>
<option value="141">Dell</option>
<option value="155">Denny's</option>
<option value="37">Dick's Sporting Goods</option>
<option value="39">Domino's Pizza</option>
<option value="390">Don Pablos</option>
<option value="290">Dooney &amp; Bourke</option>
<option value="198">Dress Barn</option>
<option value="114">DSW</option>
<option value="40">Dunkin' Donuts</option>
<option value="334">Eastern Mountain Sports</option>
<option value="347">EB Games</option>
<option value="312">El Pollo Loco</option>
<option value="177">Elephant Bar Restaurant</option>
<option value="199">Ethan Allen</option>
<option value="113">Express</option>
<option value="41">Exxon Mobil</option>
<option value="309">Famous Dave's</option>
<option value="305">Famous Footwear</option>
<option value="241">Fandango</option>
<option value="283">Fashion Bug</option>
<option value="368">Fazoli's</option>
<option value="282">Finish Line</option>
<option value="42">Fleming's Steakhouse</option>
<option value="393">Flying J</option>
<option value="242">Fogo de Chao</option>
<option value="313">Food Lion</option>
<option value="394">FoodMaxx</option>
<option value="43">Foot Locker</option>
<option value="131">Forever 21</option>
<option value="285">Fossil</option>
<option value="200">Four Seasons</option>
<option value="243">Fred Meyer</option>
<option value="201">Frederick's Of Hollywood</option>
<option value="356">Friendly's</option>
<option value="372">Frontier Airlines</option>
<option value="358">Fuddruckers</option>
<option value="44">FYE</option>
<option value="45">Game Stop</option>
<option value="202">Gander Mountain</option>
<option value="46">Gap</option>
<option value="275">Giant Eagle</option>
<option value="266">Giant Food Stores</option>
<option value="244">GNC</option>
<option value="47">Godiva Chocolatier</option>
<option value="284">Golf Galaxy</option>
<option value="203">Gordon Biersch</option>
<option value="389">Great Clips</option>
<option value="118">Gucci</option>
<option value="134">Guess</option>
<option value="124">Guitar Center</option>
<option value="156">Gymboree</option>
<option value="116">H &amp; M</option>
<option value="204">H-E-B</option>
<option value="245">Harbor Freight</option>
<option value="246">Hard Rock Cafe</option>
<option value="157">Hardee's</option>
<option value="326">Hess</option>
<option value="307">Hewlett Packard</option>
<option value="361">Hibbett Sports</option>
<option value="299">Hobby Lobby</option>
<option value="48">Hollister</option>
<option value="49">Home Depot</option>
<option value="205">Hooters</option>
<option value="405">Hoss's Steak and Sea House</option>
<option value="206">Hot Topic</option>
<option value="104">Hyatt</option>
<option value="51">IHOP</option>
<option value="328">In-N-Out Burger</option>
<option value="126">J. Crew</option>
<option value="172">Jack in the Box</option>
<option value="105">Jamba Juice</option>
<option value="272">Janie and Jack</option>
<option value="53">JCPenney</option>
<option value="173">JetBlue</option>
<option value="247">Jewel-Osco</option>
<option value="158">Jiffy Lube</option>
<option value="336">Jimmy John's</option>
<option value="208">Jo-Ann Stores</option>
<option value="371">Johnny Rockets</option>
<option value="323">Johnston and Murphy</option>
<option value="209">Jos. A. Bank</option>
<option value="448">Juicy Couture</option>
<option value="210">Justice</option>
<option value="428">K&amp;L Wine Merchants</option>
<option value="279">Kay Jewelers</option>
<option value="333">Kenneth Cole</option>
<option value="373">Kentucky Fried Chicken</option>
<option value="382">Kids Foot Locker</option>
<option value="287">Kirkland's</option>
<option value="54">Kmart</option>
<option value="55">Kohl's</option>
<option value="264">Krispy Kreme</option>
<option value="56">Kroger</option>
<option value="122">L.L. Bean</option>
<option value="396">La Salsa Fresh Mexican Grill</option>
<option value="211">Lacoste</option>
<option value="159">Land's End</option>
<option value="346">Landmark Theatres</option>
<option value="248">Landry's</option>
<option value="137">Lane Bryant</option>
<option value="249">Legal Sea Foods</option>
<option value="340">Lego Store</option>
<option value="178">Lettuce Entertain You</option>
<option value="250">Lids/Hat World</option>
<option value="212">Limited Too</option>
<option value="288">Little Caesars</option>
<option value="337">Loews Cineplex</option>
<option value="286">Logan's Roadhouse</option>
<option value="331">Lone Star Steakhouse</option>
<option value="408">Long John Silver's</option>
<option value="274">LongHorn Steakhouse</option>
<option value="111">Lord &amp; Taylor</option>
<option value="443">Louis Vuitton</option>
<option value="57">Lowe's</option>
<option value="213">Lucky Brand Jeans</option>
<option value="449">Lululemon Athletica</option>
<option value="315">MAC Cosmetics</option>
<option value="82">Macaroni Grill</option>
<option value="58">Macy's</option>
<option value="59">Maggiano's Little Italy</option>
<option value="370">Mandee</option>
<option value="403">Marathon</option>
<option value="60">Marriott</option>
<option value="397">MasterCuts</option>
<option value="304">Maurices</option>
<option value="378">MaxStudio</option>
<option value="160">McCormick and Schmick's</option>
<option value="161">McDonald's</option>
<option value="62">Melting Pot</option>
<option value="145">Men's Wearhouse</option>
<option value="63">Michaels</option>
<option value="379">Mimi Maternity</option>
<option value="383">Mission Inn</option>
<option value="176">Morton's the Steakhouse</option>
<option value="214">Motherhood Maternity</option>
<option value="64">Neiman Marcus</option>
<option value="215">New York &amp; Company</option>
<option value="216">Nike</option>
<option value="296">Nine West</option>
<option value="324">Ninety Nine</option>
<option value="395">Noah's Bagels</option>
<option value="65">Nordstrom</option>
<option value="217">Northern Tool + Equipment</option>
<option value="281">O'Charley's</option>
<option value="109">Office Depot</option>
<option value="66">Office Max</option>
<option value="218">Old Chicago</option>
<option value="67">Old Navy</option>
<option value="68">Olive Garden</option>
<option value="69">Omaha Steaks</option>
<option value="70">On the Border</option>
<option value="219">Orvis</option>
<option value="71">Outback Steakhouse</option>
<option value="72">P.F. Chang's</option>
<option value="162">Pac Sun</option>
<option value="302">Panda Express</option>
<option value="73">Panera Bread</option>
<option value="360">Papa Gino's</option>
<option value="74">Papa John's</option>
<option value="381">Pathmark</option>
<option value="163">Payless Shoe Source</option>
<option value="335">Peets Coffee and Tea</option>
<option value="435">Pei Wei Asian Diner</option>
<option value="292">Pep Boys</option>
<option value="291">Performance Bicycle</option>
<option value="329">Perkins Restaurant and Bakery</option>
<option value="75">Petco</option>
<option value="76">Petsmart</option>
<option value="325">PGA Tour Superstore</option>
<option value="401">Phillips 66</option>
<option value="354">Pick Up Stix</option>
<option value="77">Pier 1 Imports</option>
<option value="253">Pinkberry</option>
<option value="78">Piperlime</option>
<option value="164">Pizza Hut</option>
<option value="388">Pizzeria Uno</option>
<option value="353">Port of Subs</option>
<option value="79">Pottery Barn</option>
<option value="220">Publix Super Markets</option>
<option value="293">Puma</option>
<option value="374">Qdoba</option>
<option value="254">Quiznos</option>
<option value="135">Radio Shack</option>
<option value="147">Ralph Lauren</option>
<option value="80">Red Lobster</option>
<option value="165">Red Robin</option>
<option value="81">Regal Entertainment Group</option>
<option value="308">Regis Salon</option>
<option value="125">REI</option>
<option value="387">Restoration Hardware</option>
<option value="221">Rite Aid</option>
<option value="222">Rock Bottom Restaurant Brewery</option>
<option value="115">Ross</option>
<option value="295">Roy's Hawaiian Fusion</option>
<option value="223">Rubio's</option>
<option value="166">Ruby Tuesday</option>
<option value="83">Ruth's Chris Steakhouse</option>
<option value="175">Safeway</option>
<option value="143">Saks Fifth Avenue</option>
<option value="321">Sally Beauty Supply</option>
<option value="84">Sam's Club</option>
<option value="85">Sears</option>
<option value="86">Sephora</option>
<option value="437">Shaw's Supermarket</option>
<option value="400">Sheetz</option>
<option value="87">Shell</option>
<option value="365">Shoe Carnival</option>
<option value="406">Shoney's</option>
<option value="344">Shopko Stores</option>
<option value="276">ShopRite</option>
<option value="345">Showcase Cinemas</option>
<option value="298">Sizzler</option>
<option value="88">Smokey Bones</option>
<option value="255">Sonic Drive-in</option>
<option value="224">Sony Style</option>
<option value="377">Souper Salad</option>
<option value="107">Southwest Airlines</option>
<option value="225">Speedway SuperAmerica</option>
<option value="226">Sport Chalet</option>
<option value="89">Sports Authority</option>
<option value="90">Staples</option>
<option value="91">Starbucks</option>
<option value="256">Steve Madden Shoes</option>
<option value="349">Stop N Shop</option>
<option value="127">Subway</option>
<option value="119">Sunglass Hut</option>
<option value="174">Sunoco</option>
<option value="386">Supercuts</option>
<option value="317">Sur La Table</option>
<option value="404">Taco Bell</option>
<option value="380">Tahoe Joe's</option>
<option value="167">Talbots</option>
<option value="316">Tanger Outlets</option>
<option value="93">Target</option>
<option value="350">Tesoro</option>
<option value="257">Texas Roadhouse</option>
<option value="94">TGI Friday's</option>
<option value="123">The Body Shop</option>
<option value="227">The Bon-Ton Stores</option>
<option value="258">The Coffee Bean &amp; Tea Leaf</option>
<option value="120">The Container Store</option>
<option value="259">The Great Indoors</option>
<option value="140">The North Face</option>
<option value="96">Tiffany &amp; Co.</option>
<option value="364">Tim Hortons</option>
<option value="294">Tony Roma's</option>
<option value="98">Toys R Us</option>
<option value="260">Tractor Supply Co.</option>
<option value="117">Trader Joe's</option>
<option value="332">True Religion Brand Jeans</option>
<option value="261">ULTA</option>
<option value="384">United Airlines</option>
<option value="262">Uno Chicago Grill</option>
<option value="112">Urban Outfitters</option>
<option value="228">US Airways</option>
<option value="99">Victoria's Secret</option>
<option value="391">Vons</option>
<option value="168">Walgreen's</option>
<option value="101">Walmart</option>
<option value="289">Wawa</option>
<option value="366">Wegmans</option>
<option value="102">Wendy's</option>
<option value="129">West Elm</option>
<option value="319">Wet Seal</option>
<option value="407">Whataburger</option>
<option value="398">White Castle</option>
<option value="229">White House Black Market</option>
<option value="110">Whole Foods</option>
<option value="103">Williams-Sonoma</option>
<option value="170">Yankee Candle</option>
<option value="375">Younkers</option>
<option value="303">Z Gallerie</option>
<option value="230">Zumiez</option></select><br>
              
              (Don't see your merchant? <a href="#" class="merchant_request_link">Let us know!</a>)
            </td>
          </tr>
          <tr>
            <td>
              <div id="balance_check" class="blue_box" style="display: none"></div>
              <label for="card_value">Current Value</label><br>
              <input class="input_large_200" id="card_value" name="card[value]" size="30" type="text"><br>
              
            </td>
          </tr>
          <tr>
            <td>
              <div id="pin_prompt" style="display: none">
                <div style="padding-bottom: 0.5em;">
                  <label for="card_has_pin">Does the Card Have a PIN?</label>
                  (<a id="show_locate_pin" class="show_locate_pin">Where can I find the PIN?</a>)<br>
                </div>
                <div id="locate_pin" class="blue_box" style="display: none">
                  <img alt="Diagram of card number and PIN" src="/scaled_images/common/x120/back_of_gift_card_1_x120.png?1330132076" height="120">
                  <img alt="Diagram of card number and PIN" src="/scaled_images/common/x120/back_of_gift_card_2_x120.png?1330132076" height="120">
                </div>
                <div class="raised_box">
                  <div class="box_top_right"><div class="box_top_left"><!-- ie_hack: ie6 sucks --></div></div>
                  <div class="box_middle_right"><div class="box_middle_left"><div class="content_tiny_extra_padding">
                      <input id="card_has_pin_yes" name="card[has_pin]" value="yes" type="radio">
                      <label for="card_has_pin_yes">Yes</label> &nbsp;
                      <input id="card_has_pin_no" name="card[has_pin]" value="no" type="radio">
                      <label for="card_has_pin_no">No</label> &nbsp;
                      <input checked="checked" id="card_has_pin_notsure" name="card[has_pin]" value="notsure" type="radio">
                      <label for="card_has_pin_notsure">Not Sure</label><br>
                      
                  </div></div></div>
                  <div class="box_bottom_right"><div class="box_bottom_left"><!-- ie_hack: ie6 sucks --></div></div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <span class="blue_button submit_button bottom" style="width: 95px;"><a href="/sell-gift-cards"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Get Offer</span></span></span></a></span>
            </td>
          </tr>
        </tbody></table>
      </form>    </div></div></div>
    <div class="box_bottom_right"><div class="box_bottom_left"><!-- ie_hack: ie6 sucks --></div></div>
  </div>
  </div>
  <!-------span-12 last------>
  <div class="span-12 last">
  
 <div class="raised_box_with_header">
   <div class="box_top_right"><div class="box_top_left"><div class="header">How it Works</div></div></div>
     <div class="box_middle_right"><div class="box_middle_left"><div class="content">
        <p>
          Have unused gift cards? Cardpool gives you an easy way to sell gift cards for cash and other valuable items.
        </p>
        <p>
          Selling more than $5,000 in gift cards?  Learn about <a href="/bulk-seller-program">Bulk Sales</a>.
        </p>
        <hr>
        <p>
          <strong>Step 1: Get Offers</strong><br>
          Tell us which gift cards you'd like to sell for cash.
        </p>
        <p>
          <strong>Step 2: Transfer Gift Cards</strong><br>
          Sell your gift cards electronically - no mailing required, or mail your gift cards using our FREE SHIPPING LABEL.
        </p>
        <p>
          <strong>Step 3: Get Paid</strong><br>
          We'll send you a check within 24 hours of receiving your gift cards.
        </p>
        <p class="bottom">
          Questions? To learn more about selling gift cards, <a href="/support/how-it-works">click here</a>.
        </p>
      </div></div></div>
    <div class="box_bottom_right"><div class="box_bottom_left"><!-- ie_hack: ie6 sucks --></div></div>
  </div>

  </div>

<!------------->
    <div id="footer" class="span-24 last">
      <div>
        <a href="http://www.cardpool.com/about">About Us</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/press" class="ga_track_event:category=clicks:action=press:opt_label=footer">In the News</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/tos">Terms of Use</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/privacy" target="_blank">Privacy Policy</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/affiliates/programs" class="ga_track_event:category=clicks:action=invite:opt_label=footer">Affiliate Program</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/jobs" class="ga_track_link:href=/virtual/jobs">Jobs</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/blog" class="ga_track_link:href=/virtual/blog">Blog</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/sitemap" class="ga_track_event:category=clicks:action=sitemap:opt_label=footer">Sitemap</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/support/how-it-works" class="ga_track_event:category=clicks:action=faq:opt_label=footer">FAQ</a> <span class="separator">|</span> 
        <a href="http://www.cardpool.com/support/contact">Contact Us</a>
      </div>
      <div id="footer_disclaimer">
          Designated trademarks and brands are the property of their respective owners.
          Use of this website constitutes acceptance of Cardpool.com's 
          <a href="http://www.cardpool.com/privacy" target="_blank">Privacy Policy</a> 
          and <a href="http://www.cardpool.com/tos">Terms of Use</a>.
      </div>
      <div id="footer_copyright">
        Copyright © 2012 Cardpool, Inc. All right reserved.
      </div>
    </div>  
  </div>
  
  <div id="login_window" class="window_overlay">
    <div id="login_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="login_form_message"></div>
      <table class="layout">
        <tbody><tr>
          <td style="vertical-align: top; padding-right: 20px; width: 200px;">
            <h2>Returning Customers</h2>
            <hr>
            <form action="https://www.cardpool.com/login_api.json" class="login_form display_form_errors_inline" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>              <div class="flashes">
                
              </div>
              <table class="layout">
                <tbody><tr>
                  <td>
                    <label for="login_window_content_login_id_placeholder">Email</label>
                    <input class="login_email input_large_full" id="login_window_content_login_id_placeholder" name="login" type="text">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="login_window_content_password_id_placeholder">Password</label>
                    <input class="login_password input_large_full" id="login_window_content_password_id_placeholder" name="password" type="password">
                    <p><a href="http://www.cardpool.com/reset-password">Forgot your password?</a></p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <span class="blue_button bottom" style="width: 75px;"><a href="" class="login_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Login</span></span></span></a></span>
                  </td>
                </tr>
              </tbody></table>
            </form>          </td>

          <td style="width: 1px; background-color: rgb(221, 221, 221);"></td>

          <td style="vertical-align: top; padding-left: 20px; width: 230px;">
            <h2>New Customers</h2>
            <hr>
            <form action="https://www.cardpool.com/signup_api.json" class="signup_form display_form_errors_inline" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>              <div class="flashes">
                
              </div>
              <table class="layout">
                <tbody><tr>
                  <td>
                    <label for="user_full_name">Full Name </label>
                    
                    <input class="input_large_full" id="user_full_name" name="user[full_name]" size="30" value=" " type="text">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="user_email">Email </label>
                    
                    <input class="input_large_full" id="user_email" name="user[email]" size="30" type="text">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="user_password">Password </label>
                    
                    <input class="input_large_full" id="user_password" name="user[password]" size="30" type="password">
                  </td>
                </tr>
                <tr>
                  <td>
                     <table class="layout">
                       <tbody><tr>
                         <td style="vertical-align: top;">
                           <input checked="checked" id="opt_in_to_email_newsletter" name="opt_in_to_email_newsletter" value="yes" type="checkbox">
                         </td>
                         <td style="vertical-align: top;">
                           <div style="margin-left: 6px;">
                            <label for="opt_in_to_email_newsletter" style="font-weight: normal; font-size: 10px;">Please send me member-only discounts and news about Cardpool.</label>
                           </div>
                         </td>
                       </tr>
                      </tbody></table>
                    </td>
                  </tr>
                  <tr>
                    <td>
                    <div style="margin-top: 10px;">
                      <span class="blue_button bottom" style="width: 82px;"><a href="" class="signup_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Signup</span></span></span></a></span>
                    </div>
                  </td>
                </tr>
              </tbody></table>
            </form>          </td>
        </tr>
      </tbody></table>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="checkout_login_window" class="window_overlay">
    <div id="checkout_login_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="checkout_login_form_message"></div>
      <table class="layout">
        <tbody><tr>
          <td style="vertical-align: top; padding-right: 20px; width: 210px;">
            <h2>Returning Customers</h2>
            <hr>
            <form action="https://www.cardpool.com/login_api.json" class="login_form display_form_errors_inline" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>              <div class="flashes">
                
              </div>
              <table class="layout">
                <tbody><tr>
                  <td>
                    <label for="checkout_login_window_content_login_id_placeholder">Email</label>
                    <input class="login_email input_large_full" id="checkout_login_window_content_login_id_placeholder" name="login" type="text">
                  </td>
                </tr>
                <tr>
                  <td>
                    <label for="checkout_login_window_content_password_id_placeholder">Password</label>
                    <input class="login_password input_large_full" id="checkout_login_window_content_password_id_placeholder" name="password" type="password">
                    <p><a href="http://www.cardpool.com/reset-password">Forgot your password?</a></p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <span class="blue_button bottom" style="width: 75px;"><a href="" class="login_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Login</span></span></span></a></span>
                  </td>
                </tr>
              </tbody></table>
            </form>          </td>

          <td style="width: 1px; background-color: rgb(221, 221, 221);"></td>

          <td style="vertical-align: top; padding-left: 20px; width: 220px;">
            <h2>Guest Checkout</h2>
            <hr>
            <p style="margin-bottom: 5px;">
              Proceed to checkout.  You will have a chance to create an account later.
            </p>
            <table class="layout">
              <tbody><tr>
                <td>
                  <div style="width:120px; margin-top: 10px; margin-left:auto; margin-right:auto;">
                    <span class="blue_button bottom" style="width: 120px;"><a href="" class="guest_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Continue</span></span></span></a></span>
                  </div>
                </td>
              </tr>
            </tbody></table>
            <div style="margin-top: 20px; padding: 0 15px;">
              <hr class="light">
              <p style="text-align: center;">
                <a href="#" class="signup_link ga_track_link:href=/virtual/guest_checkout/click_create_account">Want to create a new account?</a>
              </p>
            </div>
          </td>
        </tr>
      </tbody></table>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="feedback_window" class="window_overlay">
    <div id="feedback_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <h2>We <strong>really value</strong> your feedback!</h2>
      <hr>
      <form action="/feedback" id="feedback_form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>        <table class="layout">
          <tbody><tr>
            <td>
              <label for="feedback_message">Questions, comments, or concerns?</label>
              <textarea class="input_large_full" cols="50" id="feedback_message" name="feedback_message" rows="12" style="height: 200px;"></textarea>
            </td>
          </tr>
          <tr>
            <td>
              <label for="feedback_email">Email (optional)</label>
              <input class="input_large_full" id="feedback_email" name="feedback_email" type="text">
            </td>
          </tr>
          <tr>
            <td style="padding-top: 5px;">
              <span class="blue_button bottom" style="width: 75px;"><a href="" class="feedback_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Send</span></span></span></a></span>
            </td>
          </tr>
        </tbody></table>
      </form>    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="new_affiliate_inquiry_window" class="window_overlay">
    <div id="new_affiliate_inquiry_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <h2>Join The Cardpool VIP Affiliate Program</h2>
      <hr>
      <form action="/new_affiliate_inquiry" class="new_affiliate_inquiry_form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>        <table class="layout">
          <tbody><tr>
            <td>
              <label for="new_affiliate_website">Website</label>
              <input class="input_large_full" id="new_affiliate_website" name="new_affiliate_website" type="text">
            </td>
          </tr>
          <tr>
            <td>
              <label for="new_affiliate_monthly_uniques">Monthly Uniques</label>
              <input class="input_large_full" id="new_affiliate_monthly_uniques" name="new_affiliate_monthly_uniques" type="text">
            </td>
          </tr>
          <tr>
            <td>
              <label for="new_affiliate_tell_us">Tell us about your website</label>
              <textarea class="input_large_full" cols="50" id="new_affiliate_tell_us" name="new_affiliate_tell_us" rows="1" style="height: 100px;"></textarea>
            </td>
          </tr>
          <tr>
            <td style="padding-top: 5px;">
              <span class="blue_button bottom" style="width: 120px;"><a href="" class="new_affiliate_inquiry_submit_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Join Program</span></span></span></a></span>
            </td>
          </tr>
        </tbody></table>
      </form>    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="check_cardpool_gift_card_balance_window" class="window_overlay">
    <div id="check_cardpool_gift_card_balance_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="gray_box" style="margin-top: 5px; margin-bottom: 5px">
        <h2>Check Cardpool Gift Card Balance</h2>
        <hr>
        <table class="layout bottom" style="width: 400px; margin: 0pt auto;">
          <tbody><tr>
            <td>
              <form action="/check_cardpool_gift_card_balance" class="check_cardpool_gift_card_balance_form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>                <table class="layout">
                  <tbody><tr>
                    <td>
                      <label for="cardpool_gift_card_number">Gift Card Number</label><br>
                      <input class="input_large_300" id="cardpool_gift_card_number" name="cardpool_gift_card_number" type="text"><br>
                      <span class="green_button submit_button bottom" style="width: 120px;"><a href="#" class="check_cardpool_gift_card_balance_submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Check Balance</span></span></span></a></span>
                    </td>
                  </tr>
                </tbody></table>
              </form>                            
            </td>
          </tr>
        </tbody></table>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="amazon_gift_card_window" class="window_overlay">
    <div id="amazon_gift_card_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <div style="margin: 15px auto 25px; width: 340px;">
          <img alt="Amazon.com Logo" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/amazon_logo_340x.jpg" width="340">
        </div>
        <p>
          If you select the Gift Card option, we will send you an 
Amazon.com Gift Card via email within 24 hours of receiving your gift 
cards.
        </p>
        <p>
          Amazon.com Gift Cards never expire and can be used to shop for
 millions of items at www.amazon.com,
          where you can find and discover almost anything you want to 
buy online at a great price.  Amazon.com's huge selection 
          includes products in Books, Electronics, Music, MP3 Downloads,
 DVD, Home &amp; Garden, Apparel &amp; Accessories, Beauty, and more.
        </p>
        <p class="bottom">
          <a href="http://www.amazon.com/gp/redirect.html?ie=UTF8&amp;location=http%3A%2F%2Fwww.amazon.com%2F&amp;tag=cardpool-20&amp;linkCode=ur2&amp;camp=1789&amp;creative=390957" class="ga_track_link learn_more" target="_blank">Browse Amazon.com to Learn More</a>
        </p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="cash_option_window" class="window_overlay">
    <div id="cash_option_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <div style="margin: 15px auto 25px; width: 150px;">
          <img alt="Cash Option" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/piggy_bank_150x.jpg" width="150">
        </div>
        <p>
          If you select the Cash option, we will send you an a check via
 USPS First Class Mail within 24 hours of receiving your gift cards.
        </p>
        <p class="bottom">
          USPS Mail takes between 3 - 7 days to arrive at most locations.
        </p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="loading_window" class="window_overlay">
    <div id="loading_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box" style="text-align: center;">
        <h1>Importing Contacts</h1>
        <p>We are retrieving your contacts....</p>
        <img alt="Loading" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/loading.gif" style="padding-top: 15px; padding-bottom: 25px;">
        <p>(This may some time if you have a lot of contacts)</p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="merchant_request_window" class="window_overlay">
    <div id="merchant_request_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <h2>Let us know what merchant we should accept!  We'll email you as soon as we start accepting them.</h2>
      <hr>
      <form action="/feedback/request_merchant" id="merchant_request_form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>        <table class="layout">
          <tbody><tr>
            <td>
              <label for="merchant_request_merchant_name">Merchant name</label><br>
              <input class="input_large_full" id="merchant_request_merchant_name" name="merchant_request_merchant_name" type="text"><br>
              <div class="formError" id="merchant_request_merchant_name_error" style="display:none"><span>Please enter a merchant name.</span></div>
            </td>
          </tr>
          <tr>
            <td>
              <label for="merchant_request_email">Email</label><br>
              <input class="input_large_full" id="merchant_request_email" name="merchant_request_email" type="text"><br>
              <div class="formError" id="merchant_request_email_error" style="display:none"><span>Please enter a valid email address.</span></div>
            </td>
          </tr>
          <tr>
            <td style="padding-top: 5px;">
              <span class="blue_button bottom" style="width: 75px;"><a href="" class="feedback_button submit_button"><span class="button_right" style="cursor: pointer;"><span class="button_left"><span class="button_text">Send</span></span></span></a></span>
            </td>
          </tr>
        </tbody></table>
      </form>    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <!-- buy -->
  <div id="electronic_gift_card_window" class="window_overlay">
    <div id="electronic_gift_card_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <div style="margin: 15px auto 25px; width: 100px;">
          <img alt="Buy Electronic Gift Cards" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/eredemption_100x.jpg" width="100">
        </div>
        <p>
          When you purchase an electronic gift card, we'll email you the gift card number and pin so you can use it online.
          These electronic gift cards will be emailed to you within 24 hours. 
        </p>
        <p>
          <strong><span class="yellow">Electronic gift cards cannot be shipped to you</span></strong>
          and can only be used online, not in physical retail locations.
        </p>
        <p class="bottom">
          * We cannot accept returns for electronic gift cards.
        </p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>




  </div>
  <div id="electronic_gift_card_from_cart_window" class="window_overlay">
    <div id="electronic_gift_card_from_cart_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <div style="margin: 15px auto 25px; width: 100px;">
          <img alt="Buy Electronic Gift Cards" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/eredemption_100x.jpg" width="100">
        </div>
        <p>
          When you purchase an electronic gift card, we'll email you the gift card number and pin so you can use it online.
          These electronic gift cards will be emailed to you within 24 hours. 
        </p>
        <p>
          <strong><span class="yellow">Electronic gift cards cannot be shipped to you</span></strong>
          and can only be used online, not in physical retail locations.
        </p>
        <p class="bottom">
          * We cannot accept returns for electronic gift cards.
        </p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>




  </div>
  <div id="mobile_delivery_gift_card_window" class="window_overlay_700">
    <div id="mobile_delivery_gift_card_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box_700">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <table class="layout">
          <tbody><tr>
            <td style="padding-right: 30px;">
              <img alt="Cardpool on iPhone" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/iphone4_mobile_cardpool_target_120x.png" width="120">
            </td>
            <td>
              <p>
                <strong>New - Mobile Gift Cards!</strong>
              </p>
              <p>
                When you purchase a mobile gift card, we'll send you a link to display the gift card on
                your smartphone. Why choose a mobile gift card?
              </p>
              <ul>
                <li>Fastest delivery. Get your gift card within 24 hours.</li>
                <li>Use at any retail location, just like a plastic card.</li>
              </ul>
              <p>
                Your smartphone must be able to browse web pages. Delivery is free from Cardpool but
                data rates may apply.
              </p>
              <p class="bottom">
                <strong><span class="yellow">Mobile gift cards cannot be physically shipped to you</span></strong>. <br>
                * We cannot accept returns for mobile gift cards.
              </p>
            </td>
          </tr>
        </tbody></table>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>




  </div>
  <div id="mobile_delivery_gift_card_from_cart_window" class="window_overlay_700">
    <div id="mobile_delivery_gift_card_from_cart_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box_700">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <table class="layout">
          <tbody><tr>
            <td style="padding-right: 30px;">
              <img alt="Cardpool on iPhone" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/iphone4_mobile_cardpool_target_120x.png" width="120">
            </td>
            <td>
              <p>
                <strong>New - Mobile Gift Cards!</strong>
              </p>
              <p>
                When you purchase a mobile gift card, we'll send you a link to display the gift card on
                your smartphone. Why choose a mobile gift card?
              </p>
              <ul>
                <li>Fastest delivery. Get your gift card within 24 hours.</li>
                <li>Use at any retail location, just like a plastic card.</li>
              </ul>
              <p>
                Your smartphone must be able to browse web pages. Delivery is free from Cardpool but
                data rates may apply.
              </p>
              <p class="bottom">
                <strong><span class="yellow">Mobile gift cards cannot be physically shipped to you</span></strong>. <br>
                * We cannot accept returns for mobile gift cards.
              </p>
            </td>
          </tr>
        </tbody></table>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>




  </div>
  <div id="show_buy_cart_window" class="show_buy_cart_overlay">
    <div id="show_buy_cart_loading_content">
        <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box_700">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <h2>Shopping Cart</h2>
      <div class="blue_box" style="padding-top: 12px; padding-bottom: 12px; text-align: center;">
        <table class="layout">
          <tbody><tr>
            <td style="width: 50%;">&nbsp;<!-- ie_hack: ie67 sucks --></td>
            <td>
              <img alt="Loading" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/loading.gif" style="padding-right: 15px;"> 
            </td>
            <td>
              <span style="font-size: 14px;">Loading...</span>
            </td>
            <td style="width: 50%;">&nbsp;<!-- ie_hack: ie67 sucks --></td>
          </tr>
        </tbody></table>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  

    </div>
    <div id="show_buy_cart_content">
      <!-- ajax -->
    </div>
  </div>
  <!-- sell -->
    <div id="why_credit_card_window" class="window_overlay">
    <div id="why_credit_card_window_content">
  <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <div class="overlay_box">
        <div style="margin: 0 auto; width: 240px;">
          <img alt="Electronic Redemption Option" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/security_240x.png" width="240">
        </div>
        <p>
          To protect the Cardpool Community against fraudulent activity, gift 
          card sellers are required to keep a valid credit card on file when 
          selling gift cards electronically.  
        </p>
        <p>
          Credit cards will not be charged unless the seller is found to have 
          obtained the gift cards through illegal or fraudulent means or the 
          gift card is used after it has been sold to Cardpool.
        </p>
        <p class="bottom">
          <a href="http://www.cardpool.com/tos#selling_gift_cards" target="_blank">Learn More</a>
        </p>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  
</div>

  </div>
  <div id="show_trialpay_offer_window" class="show_trialpay_offer_overlay">
    <div id="show_trialpay_offer_loading_content">
        <!--[if lte IE 6]>
  <div class="ie6_hack_degrade_shadow_box">
  <![endif]-->  
  <div class="shadow_box_700">
    <div class="box_top"><!-- ie_hack: ie6 sucks --></div>
    <div class="box_middle"><div class="content">
      <h2>Verifying Gift Card</h2>
      <div class="blue_box" style="padding-top: 12px; padding-bottom: 12px; text-align: center;">
        <table class="layout">
          <tbody><tr>
            <td style="width: 50%;">&nbsp;<!-- ie_hack: ie67 sucks --></td>
            <td>
              <img alt="Loading" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/loading.gif" style="padding-right: 15px;"> 
            </td>
            <td>
              <span style="font-size: 14px;">Loading...</span>
            </td>
            <td style="width: 50%;">&nbsp;<!-- ie_hack: ie67 sucks --></td>
          </tr>
        </tbody></table>
      </div>
    </div></div>
    <div class="box_bottom"><!-- ie_hack: ie6 sucks --></div>
  </div>
  <!--[if lte IE 6]>
  </div>
  <![endif]-->  

    </div>
    <div id="show_trialpay_offer_content">
      <!-- ajax -->
    </div>
  </div>

  

  
  
    
  
    <script type="text/javascript">
        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script><script src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/ga.js" type="text/javascript"></script>

<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-11714870-1");



















        pageTracker._trackPageview();
        pageTracker._trackPageLoadTime();



    } catch (err) { }
</script>


    

    

    

    
  <script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 1028669068;
    var google_conversion_language = "en";
    var google_conversion_format = "3";
    var google_conversion_color = "666666";
    var google_conversion_label = "-dmtCMTDgQIQjP3A6gM";
    var google_conversion_value = 0;
    /* ]]> */
  </script>
  <script type="text/javascript" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/conversion.js">
  </script><img src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/a.gif" width="1" border="0" height="1">
  <noscript>
    <div style="display:inline;">
      <img height="1" width="1" style="border-style:none;" alt="" src="http://www.googleadservices.com/pagead/conversion/1028669068/?label=-dmtCMTDgQIQjP3A6gM&amp;guid=ON&amp;script=0" />
    </div>
  </noscript>


    

    
    
    

    
<script type="text/javascript" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/7586.js"> </script>


    

    
    
    
    
    <!-- Begin SearchForce tracking code for landing page (4.1) -->
<div id="sf_fl_content"><embed id="sfFlsPix" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/SFCookie.swf" type="application/x-shockwave-flash" allowscriptaccess="always" width="1" height="1"></div>
<script type="text/javascript" language="Javascript" src="Gift%20Card%20Exchange%20-%20Buy,%20Sell,%20and%20Trade%20Gift%20Cards%20Online%20_%20Cardpool_files/CTCommon.js"></script>
<script type="text/javascript" language="Javascript">
    SFCookie.include();
    var jcexpire = "30";
    var jURLData = "" + window.location.hash + window.location.search;
    jURLData = jURLData.substring(jURLData.indexOf('?') + 1);
    if ((jURLData && jURLData != null && jURLData != "null" && jURLData.length > 0) && jURLData.indexOf("jsid=") > -1)
        ImageJSLandingProcess();
</script>
<!-- End SearchForce tracking code -->

    

  


  </form>
</body></html>
