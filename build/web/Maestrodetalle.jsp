<%-- 
    Document   : Maestrodetalle.jsp
    Created on : 5/10/2021, 20:43:20
    Author     : mutsu
--%>

<%@page import="modelo.Ventas"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelo.Ventas_detalle " %>

<!DOCTYPE html>
<<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
   
    </head>
    <body>
        <form action="Compras.jsp" method="post" class="form-group">
                <button  name="btn_compras" id="btn_compras" value="compras" class="btn btn-danger"  >Compras</button>  
              </form>
        <h1>Formulario ventas</h1>
         <div class="container">
           <form action="sr_ventas" method="post" class="form-group">    
          <label for="lbl_nit">Nombre Nit</label> 
           <%  %>
           <select name ="drop_nit"  id="drop_nit" onchange="myFunction()" class="form-control">
               <% Ventas ventas = new Ventas();
               
              HashMap<String,String> drop = ventas.drop_nit();
              out.println("Seleccione Cliente");
              for(String i: drop.keySet()){
                  out.println("<option value='"+ i +"' >" + drop.get(i) +"   </option>");           
                   }
           
              %> 
              
            </select> 
       
              <br>
               
             
              <label for="lbl_empleado">Empleado</label> 
             <select name ="drop_empleado"  id="drop_empleado" onchange="myFunction()" class="form-control">
               <% Ventas ventas1 = new Ventas();
              HashMap<String,String> drop1 = ventas1.drop_empleado();
             
              for(String i: drop1.keySet()){
                  out.println("<option value='"+ i +"' >" + drop1.get(i) +"</option>");
                 
           
                
                   }
  
              %> 
              
            </select>
              <br>
 
               <label for ="lbl_fecha">No_Factura</label>
               <select name ="drop_fecha"  id="drop_fecha" class="form-control" >
               <% Ventas ventas2 = new Ventas();
              HashMap<String,String> drop2 = ventas2.drop_fecha();
              for(String i: drop2.keySet()){
                  out.println("<option value='"+ i +"' >" + drop2.get(i) +"   </option>");
                  }
          

              %> 
              
            </select>
              <br>
            <label for="lbl_serie">Serie</label>
            <input name="txt_serie" id="txt_serie" class="form-control">   
           
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
