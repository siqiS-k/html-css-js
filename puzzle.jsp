<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Puzzle</title>
    <link href="css/sites.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <script type="text/javascript" src="js/calculator.js"></script>
    <script type="text/javascript" src="js/puzzle.js"></script>
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/vue@2.5.16/dist/vue.min.js"></script>
    <script src="js/image-compressor.js"></script>
    <script src="js/main.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
    <!-- Header Starts Here -->
    <div class="banner inner-banner" style="height:336px;">
        <div class="header">
            <div class="container">
                <div class="logo">
                    <a href="index.html"><img src="images/logo.png" style="height:80px;width:140px;" alt=""></a>
                </div>
                <ul class="nav banner-nav" style="margin:0 0 0 15%;">
                    <li class="dropdown1"><a href="index.html">Home</a></li>
                    <li class="dropdown1">
                        <a class="down-scroll" href="photo.html">Services</a>
                        <ul class="dropdown2">
                            <li><a href="photo.html">Introduction</a></li>
                            <li><a href="puzzle.html">Puzzle</a></li>
                            <li><a>Editing</a></li>
                            <li><a>Template</a></li>
                        </ul>
                    </li>
                    <li class="dropdown1"><a href="about.html">About us</a></li>
                    <li class="dropdown1"><a href="contact.html">Contact</a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>


        <div class="banner-info1" style="padding-left:200px; height:222px;" name="bannerclass">
            <div style="height:200px;width:90px;float:left;margin-right:30px;">
                <img src="images/calculator.png" style="margin:0px 20px 20px 20px;height:80px;width:80px;" value="Sen" alt="">
            </div>

            <h2 style="color:white;">Inches--mm calculator</h2>
            <p style="color:white;">(Please only enter one textbox to do the conversion)</p><br />
            <form name="calculat">
                <p style="color:white;">
                    Inches<br />
                    <input type="text" name="inch" />
                </p>
                <p style="color:white;">
                    MM<br />
                    <input type="text" name="mm" />
                </p>
                <br />
                <input type="button" value="Calculate" onclick="calculator()" />
                <input type="reset" value="   Reset   " name="reset" /></p>
            </form>
        </div>


    </div><br /><br /><br />



    <div class="container" style="text-align:center;width:980px;">
        <h3>Example</h3>
        <hr>
        <div id="app" >
            <div class="card bg-light mb-4" @change="change" @dragover="dragover" @drop="drop">
                <div class="card-body">
                    <div class="p-5 text-center">Upload your image 
                    	<form method="post" action="<%=basePath%>UploadServlet"  enctype="multipart/form-data" >
							    <input type="file" name="uploadFile" />
							    <br/><br/>
							    <input type="submit" value="UPLOAD"  />
						</form>
                    	
                    </div>
                </div>
            </div>
        </div>
	</div>
    <table align="center" style="width:980px;">
        <tr>
            <td>
                <div id="INPUT" style="width:60%;margin:0px 0px 20px 0px;padding-left:10px;height:600px;float:left;">
                    <h3>Upload Your Image</h3>
                    <img src="images/JHU.jpg" style="margin-top:10px;height:220px;width:260px;" value="Sen" alt="">(Use Case)
                    <table>

                        <tr>
                            <th><input type="file"></th>

                        </tr>
                        <tr>
                            <td><p>Puzzle Width: <span id="print1">0</span> px</p></td>
                            <td><input type="range" id="slider1" min="0" max="100" step="1" value="0" onchange="print1()" /></td>
                        </tr>
                        <tr>
                            <td><p>Puzzle Height: <span id="print2">0</span> px</p></td>
                            <td> <input type="range" id="slider2" min="0" max="100" step="1" value="0" onchange="print2()" /></td>
                        </tr>

                    </table>




                    <form action="" method="get">
                        <h3>Topic Preference</h3>
                        <table width="340px;" style="margin:10px;">
                            <tr>
                                <td width="210px;">
                                    <img src="images/Ani.png" style="height:180px;width:220px;" value="Sen" alt="" id="Radio_Img">
                                </td>
                                <td width="auto;">
                                    <label style="width:90px;"><input name="RADIO" type="radio" value="images/Ani" checked />Animal</label><br />
                                    <label><input name="RADIO" type="radio" value="images/Sce" />Scenery</label><br />
                                    <label><input name="RADIO" type="radio" value="images/Car" />Vehicle</label><br />
                                    <label><input name="RADIO" type="radio" value="images/Dep" />Other(VIP)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div style="width:80%;margin-top:20px;">
                                        <button type="button" onclick="alert('Backend in Development')">Make Puzzle</button>
                                    </div>
                                </td>
                            </tr>


                        </table>

                    </form>


                </div>
            </td>
            <td>
                <img src="images/arrow-right.png" style="margin-right:20px;height:50px;width:50px;" alt="">
            </td>
            <td>
                <img src="images/Ani2.jpg" style="height:320px;width:390px;" value="Sen" id="Merge_F" alt="">
            </td>
        </tr>
    </table>






    <script type="text/javascript">

        $(document).change(function () {
            $("input:radio[name='RADIO']").change(function () {
                $("#Radio_Img").attr("src", this.value + ".png");
                $("#Merge_F").attr("src", this.value + "2.jpg");
            })

        })


    </script>

    <!-- Header Ends Here -->
</body>
</html>