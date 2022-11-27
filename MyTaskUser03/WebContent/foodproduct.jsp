
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="net.model.ProdukModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Food Product</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<style>
body {
  font-family: Arial;
  margin: 0;
}

.header {
  padding: 20px;
  text-align: center;
  background: #8A2BE2;
  color: white;
  font-size: 30px;
  
}
.nav {
  padding: 10px;
  text-align: center;
  background: white;
  color: black;
  font-size: 20px;
}
.sec{
padding: 100px;
  text-align: center ;
  background: white;
  color: Black;
  font-size: 15px;
}
.foot{
padding: 20px;
  text-align: ;
  background: #8A2BE2	;
  color: White;
  font-size: 10px;
}
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #111;
}
.social-media-icon {
    padding: 5px;
    background: #222;
    color: #fff;
    border-radius: 4px;
}

a.social-media-icon:hover{
    background: #fff!important;
    color: #222!important;
}

table{
	
	border-style: solid;
    border-width: 5px;
    border-color: orange;
     border-radius: 10px;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
</style>
</head>
<body>

<div class="header">
	<h1>Welcome</h1>
	<p>MENU FOOD</p>		
</div>

<div class="sec">
	
					<%
                        ProdukModel pm = new ProdukModel();
                        List<ProdukModel> data = new ArrayList<ProdukModel>();
                        String ket = request.getParameter("ket");
                        if (ket == null) {
                            data = pm.tampil();
                        }
                        for (int x = 0; x < data.size(); x++) {
                    %>
                     <table>
            <tr>

                <td>


                    <form action="<%=request.getContextPath()%>/CartController" method="post">
<!-- getKd_produk() -->
                        Kode Produk : <%=data.get(x).getKd_produk()%> <input type="hidden" name="kd_produk" value="<%=data.get(x).getKd_produk()%>"><br>
                        Nama Produk : <%=data.get(x).getNm_produk()%><input type="hidden" name="nm_produk" value="<%=data.get(x).getNm_produk()%>"><br>
                        Harga : <%=data.get(x).getHarga_produk()%> <input type="hidden" name="harga" value="<%=data.get(x).getHarga_produk()%>"><br>
                        Stok : <%=data.get(x).getQty()%> <input type="hidden" name="harga" value="<%=data.get(x).getQty()%>"><br>

                        Quantity : <input type="number" name="qty" min="1" max="10" step="1" value="1" /><br><br>
                        
                        
                       


                    <input type="hidden" name="action" value="add">
                    <input type="submit" name="addtochart" value=" add to chart ">  
                  


                </td>

            </tr>
        </table>
         </form>
       
  <% }%>
 
</div>
<div class="foot">
	<h1></h1>
	<p>Rizkisetiawan1616@gmail.com</p>
	<p>Phone: 0821696969</p>
	<p>Cipinang, Jakarta timur, Indonesia </p>
	
	
	<a class="social-media-icon" href="https://www.facebook.com/"><span class="fab fa-facebook"></span></a>
    
    <a class="social-media-icon" href="https://twitter.com/"><span class="fab fa-twitter"></span></a>
	
	<a class="social-media-icon" href="https://instagram.com/"><span class="fab fa-instagram"></span></a>
</div>


</body>
</html>