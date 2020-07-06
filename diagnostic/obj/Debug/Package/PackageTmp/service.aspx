<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="diagnostic.service" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SERVICE</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
             <div class="row">
             <div class="col-lg-10 col-lg-offset-1">
        <div class="header-banner">
            <img class="img-responsive header_logo" src="image/refresh1.fw.png" alt="site_logo" /> 
        </div>
                 </div>
                 </div>
             <div class="row">
                 <div class="col-lg-10 col-lg-offset-1">
        <nav class="navbar navbar-default navigation">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#" ><span style="color:dodgerblue;font-family:Vivaldi"><img src="image/logo.png" height="30" /> We Care</span></a>
                   
                </div>


                <!-- Collect the nav links, forms, and other content for toggling -->
                <div  id="bs-example-navbar-collapse-1" class="collapse navbar-collapse" >
                  <ul class="nav navbar-nav navbar-right">

                    <li><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="#" style="color:dodgerblue;">ABOUT</a></li>
                       <li class="active"><a href="service.aspx" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="contact.aspx" style="color:dodgerblue;">LOCATION</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      
                 
                       <li><a href="symptom.aspx" style="color:dodgerblue;">SYMPTOMS</a></li>
                       <li><a href="appointment.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
                     </div>
                 </div>
              <div class="col-lg-10  col-lg-offset-1 col-xs-11" style="background-color: #EEEEEE;">
                <div class="row">
                    <div class="col-lg-12">
                  <h3 style="color:white;">Service</h3>
                        </div>
                     <div class="col-lg-6">
                        
                         <h6 style="color:steelblue">In Nigeria, we provide high-quality routine and specialized medical laboratory services in both the public
                           and private healthcare environment. Numbering amongst our Clients are hospitals/ Clinics, corporate insurance,
                              industrial and occupational health establishments.<br /> 
                           Amblin Laboratories and our colleagues in the Amblin Laboratories Group have collectively more than 40 specialist pathologists and 1,500
                              technical and administrative personnel available to serve our clients. 
                             Quality of testing and excellence in service is what we strive for in order to bring reliable laboratory medicine to the medical community and the people of Nigeria.
                         </h6>
                       <div class="row">
                             <div class="col-lg-12">
                                 <h4 style="color:white;">General Service</h4>
                             </div>
                             <div class="col-lg-12">
                                 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                     <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingOne">
                                             <h4 class="panel-title">
                                                 <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                     <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Haematology and Coagulation</strong>
                                             </h4>
                                         </div>
                                         <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                             <div class="panel-body">
                                                <img src="image/heama.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">Haematology is the study of blood in health and disease.
                                                      This includes study of problems with the red blood cells, white blood cells, platelets, blood vessels, bone marrow, lymph nodes, 
                                                     spleen and the proteins involved in bleeding and clotting (hemostasis and thrombosis).<br />
                                                      We offer a full range of tests to help you give your patients the most accurate results and diagnoses. Results are fast and full reporting on results is available. 
                                                 </h6>
                                                 <h5>Taking blood samples:</h5>
                                                 <ul>
                                                     <li>We provide you with sterile containers for collecting samples. </li>
                                                     <li>Samples are picked up as soon as possible by dispatch riders. </li>
                                                     <li>Samples are taken directly to our labs where they are tested. </li>
                                                     <li>Results are delivered as soon as ready, this would vary depending on the test. </li>
                                                 </ul>
                                                 <h3>Full blood count: </h3>
                                              <p>This provides measurements for haemoglobin, red cell count, red cell indices (size and volume), platelet count and Leucocyte count with full differential (neutrophils, lymphocytes, monocytes, eosinophils and basophils). </p>
                                              <p>We provide a full blood count report. Each report from the laboratory will give the appropriate normal range for the age and sex of the patient. Any abnormalities will be investigated where necessary. </p>
                                          <h3>Special Haematology</h3>
                                                 <ul>
                                                     <span><strong>We perform a variety of diagnostic tests relating to: </strong></span>
                                                     <li>Microscopic examination of blood cells</li>
                                                     <li>Decreased or increased clotting ability of blood including monitoring dosages of anticoagulants for patients</li>
                                                     <li>Blood group determinations</li>
                                                     <li>Investigation of haemolytic disorders</li>
                                                     <li>Investigation of bone marrow aspirates and trephine biopsy sections</li>
                                                     <li>Classification of leukaemias</li>
                                                     <li>CD4 counts for HIV monitoring</li>
                                                 </ul>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingTwo">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                     <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Chemical Pathology </strong>
                                                 
                                             </h4>
                                         </div>
                                         <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                             <div class="panel-body">
                                              <img src="image/chemical.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">This is a branch of pathology that deals with the biochemical basis of disease which includes measuring of serum electrolytes,
                                                      indices of liver function, hormones, drugs and tumor markers.<br />
                                                     Our chemical pathology division provides a wide range of services based on the chemical analysis of blood, body fluids and tissues.
                                                     Our testing services include accurate diagnoses,
                                                      interpretation of test results helping you select the best treatment, advice on the most appropriate investigation of a patient and screening of at-risk individuals.<br />
                                                     </h6>
                                                      <ul>
                                                         <li>Biochemistry tests: kidney and liver function, glucose, cholesterol and iron. </li>
                                                         <li>Endocrinology tests: hormones, menopausal, infertility and hirsutism screens, semen analysis. </li>
                                                         <li>Pharmacology: testing and interpretation for a wide range of therapeutic drugs. </li>
                                                         <li>Toxicology: screening of drugs of abuse and other toxic substances that could be used for poisoning. </li>
                                                         <li>Metabolic: vitamin testing, testing of kidney stones and testing for inherited metabolic diseases. </li>
                                                         <li>Cancer screening and monitoring: faecal occult blood testing for colorectal cancer, monitoring cancers of prostate, breast, colon, ovary and other tissues using tumour markers. </li>
                                                         <li>Testing for cardiac risk factors and markers of cardiac damage. </li>
                                                     </ul>
                                                
                                                 
                                             </div>
                                         </div>
                                     </div>
                                     <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingThree">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                     <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue">Microbiology</strong>
                                             </h4>
                                         </div>
                                         <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                             <div class="panel-body">
                                            <img src="image/micro.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">Microbiology encompasses numerous sub-disciplines including virology, mycology, parasitology, and bacteriology.
                                                      It studies microscopic organisms, either unicellular (single cell), multi cellular (cell colony), or acellular (lacking cells).<br />
                                                     From patient health to public health, our microbiology testing services help in the detection of infectious diseases so you can prevent their spread.
                                                 </h6>
                                                  <h3>How our microbiology labs help you and your patients:</h3>
                                                 <ul>
                                                     <li>Detection of parasites, fungi, bacteria and a variety of cells associated with disease. Different staining techniques are available depending on the application. </li>
                                                     <li>Culture of bacteria or fungi on a variety of media and subsequent identification of these organisms. </li>
                                                     <li>Susceptibility testing</li>
                                                     <li>Antigen detection tests. These can be viral or bacterial. Rapid Elisa tests are used. </li>
                                                     <li>Rapid turnaround time on mycobacterium culture and susceptibility testing using state of the art MGIT technology (Mycobacteria Growth Indicator Tube). </li>
                                                 </ul>
                                                 <p>
                                                     Our microbiologists are available to consult with you in matters relating to antimicrobial treatment,
                                                    infective diseases and advice pertaining to the selection and interpretation of serological results.
                                                 </p>

                                             </div>
                                         </div>
                                     </div>
                                       <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingFour">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                     <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Andrology</strong>
                                                 
                                             </h4>
                                         </div>
                                         <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                             <div class="panel-body">
                                            <img src="image/andro.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">The Andrology unit analyses the sperm to study male sexual health. Please call our lab to request a guide on preparation for and collection of sample
                                                 </h6>
                                                 
                                             </div>
                                         </div>
                                     </div>
                                       <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingFive">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                                   <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Molecular Biology</strong>
                                                 
                                             </h4>
                                         </div>
                                         <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                             <div class="panel-body">
                                            <img src="image/molecular.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">Molecular biology underpins the process of replication, transcription and translation of the genetic material.
                                                      It chiefly concerns the interaction between the various systems of a cell, including the inter-relationship of DNA,
                                                      RNA and protein synthesis and the regulation of these interactions. This branch of our service screen for paternity DNA, viral load, mycobacteria PCR.
                                                     Using the latest systems available, our services focus on human genetics as well as the detection and characterisation of pathogens.
                                                 </h6>
                                                 <h3>Detection of microorganisms:</h3>
                                                 <ul>
                                                     <li>Hepatitis B virus</li>
                                                     <li>Hepatitis C virus</li>
                                                     <li>Chlamydia trachomatis/Neisseria gonorrhoeae</li>
                                                     <li>HIV diagnostics and viral load</li>
                                                     <li>HIV genotyping</li>
                                                     <li>Herpes simplex virus</li>
                                                     <li>Cytomegalovirus</li>
                                                     <li>Tuberculosis, including MOTT identification drug resistance</li>
                                                     <li>Pneumocystis jirovecii</li>
                                                     <li>Rickettsiae</li>
                                                     <li>Malaria</li>
                                                     <li>Respiratory bacteria and viruses</li>
                                                 </ul>
                                                <h3>Assessing risk and treatment options through human genetics:</h3>
                                                 <ul>
                                                     <li>Factor V Leiden</li>
                                                     <li>Factor II (prothrombin G20210A) </li>
                                                     <li>MTHFR C677T</li>
                                                     <li>Hereditary Haemochromatosis</li>
                                                     <li>Variegate Porphyria</li>
                                                     <li>LDL receptor</li>
                                                     <li>Apo E4</li>
                                                     <li>Paternity testing/ family relationship</li>
                                                     <li>Cystic Fibrosis</li>
                                                     <li>HLAB27</li>
                                                     <li>BRCA1/2</li>
                                                 </ul>
                                             </div>
                                         </div>
                                     </div>
                                      <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingSix">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                                      <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Histology and Cytology</strong>
                                                 
                                             </h4>
                                         </div>
                                         <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                             <div class="panel-body">
                                            <img src="image/molecular.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">Histology is the study of tissues and organs through the examination of the microscopical architecture of tissues and the
                                                      relationship between the different types found within tissues and organs. Diseases such as inflammatory, benign abnormal growth,
                                                      infections and cancer are diagnosed by this method.
                                                     Cytopathology is the study of cellular disease and the use of cellular changes for the diagnosis of disease.
                                                     We do full testing of tissue specimens to be able to detect any manifestations of disease. This tissue analysis can be critical in finding the occurrence of tumours and determining if they are benign or malignant. Using a reputable histopathology service such as Pathcare, you can answer the questions, “Does my patient have cancer?” and “will my patients’ disease respond to treatment?” with certainty and reassurance. 
                                                 </h6>
                                                  <h3>We offer routine histopathology services including:</h3>
                                                 <ul>
                                                     <li>Macroscopical evaluation of submitted specimens</li>
                                                     <li>Routine microscopical examination of selected tissue sections</li>
                                                     <li>Immunohistochemistry</li>
                                                     <li>Immunofluorescence</li>
                                                     <li>Electronmicroscopy</li>
                                                 </ul>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="panel panel-default">
                                         <div class="panel-heading" role="tab" id="headingSeven">
                                             <h4 class="panel-title">
                                                 <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                                      <span class="glyphicon glyphicon-arrow-down"></span>
                                                 </a>
                                                 <strong style="color:steelblue;">Cytogenetics </strong>
                                             
                                             </h4>
                                         </div>
                                         <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                             <div class="panel-body">
                                            <img src="image/molecular.jpg" class="img-responsive" />
                                                 <h6 style="color:lightsteelblue">Cytogenetics is a branch of genetics that is concerned with the study of the structure and function of the cell,
                                                      especially the chromosomes. It includes routine analysis of G-branded chromosomes, other cytogenetic banding techniques, 
                                                     as well as molecular cytogenetics such as fluorescent in situ hybridization (FISH) and comparative genomic hybridization (CGH).
                                                 </h6>
                                                  
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <img src="image/sample.PNG" class="img-responsive" />

                         <div class="row">
                             <div class="row">
                                 <div class="col-lg-12">
                                 <h4 style="color:white;">Special Services include:</h4>
                                     </div>
                             </div>
                             <div class="col-lg-10">
                                 <ul style="color:steelblue">
                                     <li><span style="font-size: 12px;">Autoimmune Studies</span></li>
                                     <li><span style="font-size: 12px;">Coagulation test (advanced)</span></li>
                                     <li><span style="font-size: 12px;">Cytology &amp; Cell blocks</span></li>
                                     <li><span style="font-size: 12px;">Diabetes Studies</span></li>
                                     <li><span style="font-size: 12px;">Hormonal Assays</span></li>
                                     <li><span style="font-size: 12px;">HIV diagnosis and monitoring</span></li>
                                     <li><span style="font-size: 12px;">Philadelphia BCR-ABL gene</span></li>
                                     <li><span style="font-size: 12px;">Histopathology</span></li>
                                     <li><span style="font-size: 12px;">Immunohistochemistry</span></li>
                                     <li><span style="font-size: 12px;">Nutritional Studies</span></li>
                                     <li><span style="font-size: 12px;">Viral Load test including HBV,HCV &amp;&nbsp;HIV&nbsp;viral load plus</span></li>
                                     <li><span style="font-size: 12px;">Paternity Tests</span></li>
                                     <li><span style="font-size: 12px;">PCR Molecular Tests</span></li>
                                     <li><span style="font-size: 12px;">Flow Cytometry</span></li>
                                     <li><span style="font-size: 12px;">Serological Test</span></li>
                                     <li><span style="font-size: 12px;">Toxicology/ Drug Tests</span></li>
                                     <li><span style="font-size: 12px;">Tumor Markers</span></li>
                                     <li><span style="font-size: 12px;">Resistance Studies</span></li>
                                 </ul>
                             </div>
                         </div>
                     </div>

                 </div>
             </div>
             
    
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1">
                <p class="pull-right"><a href="#"> Back To Top</a></p>
                <h6 style="color: lightskyblue;">.......&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="service.aspx" style="color: dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color: dodgerblue;">LOCATION</a> &middot; <a href="contact.aspx" style="color: dodgerblue;">CONTACT</a> &middot; </h6>
            </div>
        </div>
        </div>
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
