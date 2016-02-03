<%@ Page Language="C#" AutoEventWireup="true" CodeFile="how-to-buy-gift-cards.aspx.cs" Inherits="how_to_buy_gift_cards" %>

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

  <form class="login_form display_form_errors_inline" runat="server">
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
    <!-- ------------------------------------------------------------------->  
	<div id="main_content" class="span-24 last">
<div class="span-24 last">
<div class="raised_box">
<div class="box_top_right">
<div class="box_top_left"></div>
</div>
<div class="box_middle_right">
<div class="box_middle_left">
<div class="content_extra_padding">
<div class="easy_to_read_styles">
<h1 style="margin-bottom: 15px;">Frequently Asked Questions</h1>
<div class="secondary_nav">
<div class="left">
<ul>
<li>
<a class="" href="how-it-works.aspx">How it Works</a></li>
<li>
<a class="selected" href="how-to-buy-gift-cards.aspx">Buying Gift Cards</a></li>
<li>
<a class="" href="how-to-sell-gift-cards.aspx">Selling Gift Cards</a></li>
</ul>
</div>
<div class="right">
<ul>
<li>
<a class="" href="contact.html">Contact Us</a></li>
</ul>
</div>
</div>
<div style="margin: 0 10px;">
<h2>How do I buy discount gift cards?</h2>
<hr>
<p>
Simply head over to our
<a href="/buy-gift-cards">discount gift cards</a>
section to browse and select the ones you like best!
</p>
<h2>How long does it take to receive my gift cards after I order them?</h2>
<hr>
<p> We ship all of our physical gift cards through USPS First Class Mail which typically takes 3-7 business days to arrive at most locations. If you order any electronic gift cards, we'll usually be able to email them to you within 1 business day. </p>
<h2>Do these gift cards ever expire or have any associated fees?</h2>
<hr>
<p> No, to provide the best customer experience we've decided to only sell gift cards with no fees and no expiration. </p>
<h2>Do you charge sales tax or shipping?</h2>
<hr>
<p> No, we do not charge sales tax and shipping is free. The price that you see is the price that you get! </p>
</div>
</div>
</div>
</div>
</div>
<div class="box_bottom_right">
<div class="box_bottom_left"></div>
</div>
</div>
</div>
</div>
<hr>
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
          <div style="margin:0;padding:0;display:inline">
          <input name="authenticity_token" value="pHzpAzpbCzETmLdiy1xIJtgZwyrW10/5hfboKI0TMU8=" type="hidden"></div>
          <div class="flashes">
                
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