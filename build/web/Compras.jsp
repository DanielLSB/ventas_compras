<%-- 
    Document   : Compras
    Created on : 25/10/2021, 23:26:33
    Author     : mutsu
--%>

<%@page import="java.util.HashMap"%>
<%@page import="modelo.Compras"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
   
    </head>
    <body>
        <h1>Formulario Compras</h1>
         <div class="container">
           <form action="sr_compras" method="post" class="form-group">    
          <label for="lbl_nit">No.Orden</label> 
           <select name ="drop_orden"  id="drop_orden"  class="form-control">
           <% Compras compras1 = new Compras();
              HashMap<String,String> drop2 = compras1.drop_orden();
              for(String i: drop2.keySet()){
                  out.println("<option value='"+ i +"' >" + drop2.get(i) +"   </option>");
                  }
          

              %> 
              
            </select> 
       
              <br>
               
             
              <label for="lbl_empleado">Proveedor</label> 
             <select name ="drop_proveedor"  id="drop_proveedor"  class="form-control">
               <% Compras compras2 = new Compras();
              HashMap<String,String> drop1 = compras2.drop_proveedor();
             
              for(String i: drop1.keySet()){
                  out.println("<option value='"+ i +"' >" + drop1.get(i) +"</option>");
                 
           
                
                   }
  
              %> 
              
            </select>
             
              <br>
            <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary">Agregar</button>
            
            </form>
              <br>
              <br>
              <br>
              
              
           
        
                </div>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
      

         
            
        
    </body>
</html>
