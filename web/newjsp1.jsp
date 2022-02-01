<%-- 
    Document   : newjsp1
    Created on : 17 Dec, 2021, 5:25:24 PM
    Author     : Dipankar
--%>

<!DOCTYPE html >
<html lang="en">
<head>
        <meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="https://www.codexworld.com/wp-content/uploads/2014/09/favicon.ico" type="image/x-icon" />
        <meta name="description" content="Live Demo at CodexWorld - Convert HTML to PDF using JavaScript by CodexWorld">
        <meta name="keywords" content="demo, codexworld demo, project demo, live demo, tutorials, programming, coding">
        <meta name="author" content="CodexWorld">
        <title>Live Demo - Convert HTML to PDF using JavaScript by CodexWorld</title>
        <!-- Bootstrap core CSS -->
        <link href="http://demos.codexworld.com/includes/css/bootstrap.css" rel="stylesheet">
        <!-- Add custom CSS here -->
        <link href="http://demos.codexworld.com/includes/css/style.css" rel="stylesheet">
		
		<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <style>
.col-lg-12 button{
	font-size: 18px;
}
.col-lg-12 button:first-child{
	margin-right: 10px;
}
</style>
</head>
<body>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
         <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
                        <a class="navbar-brand" href="https://www.codexworld.com/">
                <img src="https://www.codexworld.com/wp-content/uploads/2014/09/codexworld-logo.png" alt="CodexWorld">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="social_btn nav navbar-nav navbar-left">
                <li class="flike"><iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Ffacebook.com%2Fcodexworld&width=85&layout=button_count&action=like&show_faces=false&share=false&height=21&appId=1602134356668306" width="85" height="21" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe></li>
                <li class="tflow"><iframe allowtransparency="true" data-show-count="true" frameborder="0" scrolling="no" src="//platform.twitter.com/widgets/follow_button.html?screen_name=codexworldblog" style="width:300px; height:20px;"></iframe></li>
            </ul>
             
            <ul class="nav navbar-nav navbar-right">
                        	<li>
                    <a href="http://www.codexworld.com/downloads/convert-html-to-pdf-using-javascript-jspdf">Download</a>
                </li>
                        
                        	<li>
                    <a href="https://www.codexworld.com/convert-html-to-pdf-using-javascript-jspdf/">Tutorial</a>
                </li>
                        </ul>
                    </div>
        <!-- /.navbar-collapse -->
          	</div>
</nav>
<div class="bar-header">
	<!-- CodexWorld_Demo_HeaderTop -->
	<ins class="adsbygoogle"
		 style="display:block"
		 data-ad-client="ca-pub-5750766974376423"
		 data-ad-slot="8179048472"
		 data-ad-format="auto"
		 data-full-width-responsive="true"></ins>
	<script>
		 (adsbygoogle = window.adsbygoogle || []).push({});
	</script>
</div>
<div class="demo-title"><h4>DEMO BY <span class="one">CODEX</span><span class="two">WORLD</span>: Convert HTML to PDF using JavaScript</h4></div>
        <div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div>
            	<button onclick="generatePDF();">Click to Generate PDF</button>
				<button onclick="Convert_HTML_To_PDF();">Convert HTML to PDF</button>
				
				<!-- HTML content for PDF creation -->
				<div id="contentToPrint">
					<h1>What is Lorem Ipsum?</h1>
					
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
					<img src="images/flowers.jpg">
				
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
					<img src="images/codex-trees.jpeg" width="450" height="250">
				</div>
            </div>
        </div>
    </div>

</div>
    <!-- /.container -->
	    	<div class="bar-footer">
			<!-- CodexWorld_Demo_PageBottom -->
			<ins class="adsbygoogle"
				 style="display:block"
				 data-ad-client="ca-pub-5750766974376423"
				 data-ad-slot="1397129652"
				 data-ad-format="auto"
				 data-full-width-responsive="true"></ins>
			<script>
				 (adsbygoogle = window.adsbygoogle || []).push({});
			</script>
        </div>
        	<!-- JavaScript -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     	        <script src="http://demos.codexworld.com/includes/js/bootstrap.js"></script>
        <!-- Place this tag in your head or just before your close body tag. -->
        <!--<script src="https://apis.google.com/js/platform.js" async defer></script>-->
    	
<!-- html2canvas library -->
<script src="js/html2canvas.min.js"></script>

<!-- jsPDF library -->
<script src="js/jspdf.min.js"></script>

<script>
/*
 * Generate 2 pages PDF document
 */
function generatePDF() {
	var doc = new jsPDF();
	
	doc.text(20, 20, 'Hello world!');
	doc.text(20, 30, 'This is client-side Javascript to generate a PDF.');
	
	doc.text(20, 40, 'This is the default font.');
	
	doc.setFont("courier");
	doc.setFontType("normal");
	doc.text(20, 50, '???? ??? ??????? ??????????');
	
	doc.setFont("times");
	doc.setFontType("italic");
	doc.text(20, 60, '???? ??? ??????? ??????????');
	
	doc.setFont("helvetica");
	doc.setFontType("bold");
	doc.text(20, 70, 'This is helvetica bold.');
	
	doc.setFont("courier");
	doc.setFontType("bolditalic");
	doc.text(20, 80, 'This is courier bolditalic.');
	
	doc.addPage();
	
	doc.setFontSize(24);
	doc.text(20, 20, 'This is a title');
	
	doc.setFontSize(16);
	doc.text(20, 30, 'This is some normal sized text underneath.');
	
	doc.setTextColor(100);
	doc.text(20, 40, 'This is gray.');
	
	doc.setTextColor(150);
	doc.text(20, 50, 'This is light gray.');
	
	doc.setTextColor(255,0,0);
	doc.text(20, 60, 'This is red.');
	
	doc.setTextColor(0,255,0);
	doc.text(20, 70, 'This is green.');
	
	doc.setTextColor(0,0,255);
	doc.text(20, 80, 'This is blue.');
	
	// Save the PDF
	doc.save('document.pdf');
}

/*
 * Convert HTML content to PDF
 */
function Convert_HTML_To_PDF() {
	var elementHTML = document.getElementById('contentToPrint');

  html2canvas(elementHTML, {
    useCORS: true,
    onrendered: function(canvas) {
      var pdf = new jsPDF('p', 'pt', 'letter');

      var pageHeight = 980;
      var pageWidth = 900;
      for (var i = 0; i <= elementHTML.clientHeight / pageHeight; i++) {
        var srcImg = canvas;
        var sX = 0;
        var sY = pageHeight * i; // start 1 pageHeight down for every new page
        var sWidth = pageWidth;
        var sHeight = pageHeight;
        var dX = 0;
        var dY = 0;
        var dWidth = pageWidth;
        var dHeight = pageHeight;

        window.onePageCanvas = document.createElement("canvas");
        onePageCanvas.setAttribute('width', pageWidth);
        onePageCanvas.setAttribute('height', pageHeight);
        var ctx = onePageCanvas.getContext('2d');
        ctx.drawImage(srcImg, sX, sY, sWidth, sHeight, dX, dY, dWidth, dHeight);

        var canvasDataURL = onePageCanvas.toDataURL("image/png", 1.0);
        var width = onePageCanvas.width;
        var height = onePageCanvas.clientHeight;

        if (i > 0) // if we're on anything other than the first page, add another page
          pdf.addPage(612, 864); // 8.5" x 12" in pts (inches*72)

        pdf.setPage(i + 1); // now we declare that we're working on that page
        pdf.addImage(canvasDataURL, 'PNG', 20, 40, (width * .62), (height * .62)); // add content to the page
      }
			
			// Save the PDF
      pdf.save('document-html.pdf');
    }
  });
}
</script>
</body>
</html>

