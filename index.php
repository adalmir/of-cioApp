<?php  
 function fetch_data()  
 {  
      $output = '';  
      $conn = mysqli_connect("localhost","id3798099_adalmir", "324568", "id3798099_ofico"); 
      $sql = "SELECT * FROM oficio ORDER BY ID DESC LIMIT 1";
      $result = mysqli_query($conn, $sql); 
      setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
      while($row = mysqli_fetch_array($result))
      {       
      $output .= '  
                          <br><br><br><br><div>OF. SMCEL-'.$row["id"].'/2018</div>
                          <div>Assunto:'.$row["assunto"].'</div>
                          <div align="right">Governador Valadares '.ucfirst( utf8_encode( strftime("%d de %B de %Y", strtotime($row["dia"])))).'</div>  
                          <br><br><br><br>
                          <h5>Ilmo(a) Senhor(a)</h5><br><br><div style="text-align:justify" align="center">'.$row["texto"].'</div>
                          <br><br><br><br><br><br><br><br><br><br><br>
                          <div align="center">'.$row["responsavel"].'<p><h5>Secretário Municipa de Cultura Esporte e Lazer</h5></div>
                          <br><br><br><br>
                          <div align="center">'.$row["diretor"].'<p><h5>Diretor Departamento de Cultura<h5></div>
                          <br><br><br><br><br><br><br><br><br><br>
                           <div align="left">'.$row["destinatario"].'</div> 
                           <div align="left">'.$row["orgao"].'</div> 
                           <div align="left">'.$row["endereco"].'</div> 
                       
                          ';  
      }  
      return $output;  
 }  
 if(isset($_POST["generate_pdf"]))  
 {  
 
      require_once('tcpdf/tcpdf.php');  
      // Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $image_file = K_PATH_IMAGES.'Cabeçalho.jpg';
        $this->Image($image_file, 38, 10, 130, '', 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->SetFont('times', 'B', 16);
        // Title
        $this->Cell(0, 15, '', 0, false, 'C', 0, '', 0, false, 'M', 'M');
         
    }

   // Page footer 
    public function Footer() {
    $image_file = K_PATH_IMAGES."footer.jpg"; 
    $this->Image($image_file, 35, 270, 135, "", "JPG", "", "T", false, 300, "", false, false, 0, false, false, false);
    // Position at 15 mm from bottom 
    $this->SetY(-15);
    // Set font 
    $this->SetFont("dejavusans", "", 9);
    // Page number
    // Logo 
    }
}

      $obj_pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
      $obj_pdf->SetCreator(PDF_CREATOR);  
      $obj_pdf->SetTitle("Ofício Cultura");
      $obj_pdf->SetHeaderData('', '',PDF_HEADER_LOGO,PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);  
      $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
      $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
      $obj_pdf->SetDefaultMonospacedFont('helvetica');  
      $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
      $obj_pdf->SetMargins(PDF_MARGIN_LEFT, '10',PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
      $obj_pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
      $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
      $obj_pdf->setPrintHeader(true);  
      $obj_pdf->setPrintFooter(true);  
      $obj_pdf->SetAutoPageBreak(TRUE, 10,PDF_MARGIN_BOTTOM);  
      // set image scale factor
      $obj_pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
      $obj_pdf->SetFont('helvetica', '', 11);  
      $obj_pdf->AddPage();
      $content = '';  
      $content .= '  
      <p>
      <p>
      <table border="1" cellspacing="0" cellpadding="3" rules="none">  
           <tr>  
                <th width="5%"></th>  
                <th width="15%"></th>  
                <th width="15%"></th>  
                <th width="25%"></th>
                <th width="25%"></th>
                <th width="40%"></th> 
                <th width="40%"></th> 
                <th width="40%"></th> 
           </tr>  
      ';  
      $content .= fetch_data(); 
      $obj_pdf->writeHTML($content);  
      $obj_pdf->Output('file.pdf', 'I');  
 }  
 
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Oficio Cultura </title>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />            
      </head>  
      <body>  
           <br />
           <div class="container">  
                <h4 align="center"> Oficio Cultura</h4><br />  
                <div class="table-responsive">  
                	<div class="col-md-12" align="right">
                     <form method="post">  
                          <input type="submit" name="generate_pdf" class="btn btn-success" value="Imprimir ofício" />  
                     </form>  
                     </div>
                     <br/>
                     <br/>
                    <table border="0" cellspacing="0" cellpadding="3" bgcolor="white" rules="none">
                          <tr>  
                               <th width="5%"></th>  
                               <th width="30%"></th>  
                               <th width="15%"></th>  
                               <th width="50%"></th>
                               <th width="50%"></th>
                               <th width="5%"></th>  
                               <th width="30%"></th>  
                               <th width="15%"></th>
                          </tr>  
                     <?php  
                     echo fetch_data();  
                     ?>  
                     </table>  
                </div>  
           </div>  
      </body>  
</html>  