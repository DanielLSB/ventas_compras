<%-- 
    Document   : Ventas_detalle
    Created on : 17/10/2021, 02:01:27
    Author     : mutsu
--%>
<%@page import="javax.swing.table.DefaultTableModel"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="modelo.Ventas_detalle " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ventas</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
         <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
         <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="Compras.jsp" method="post" class="form-group">
                <button  name="btn_compras" id="btn_compras" value="compras" class="btn btn-danger"  >Compras</button>  
              </form>
        <div class="container">
            
              <table class="table table-hover">
    <thead>
      <tr>
        
        <th>NoFactura</th>
        <th>Serie</th>
        <th>Fecha Factura</th>
        <th>   Cliente</th>
        <th>Nit</th>
        <th>Empleado</th>
        <th>Fecha ingreso</th>
        
        
        
      </tr>
    </thead>
    <tbody id="tbl_ventas_detalle">
    <%
        Ventas_detalle ventas_detalle02 = new Ventas_detalle();
        DefaultTableModel tabla1 = new DefaultTableModel();
        tabla1 = ventas_detalle02.leerventa();
        for (int t=0;t <tabla1.getRowCount();t++){
            out.println("<tr data-id1="+tabla1.getValueAt(t, 0)+" data-id_p1="+tabla1.getValueAt(t, 7)+">");
            out.println("<td>"+ tabla1.getValueAt(t, 1)+"</td>");
            out.println("<td>"+ tabla1.getValueAt(t, 2)+"</td>");
            out.println("<td>"+ tabla1.getValueAt(t, 3)+"</td>");
            
            out.println("<td>"+ tabla1.getValueAt(t, 4)+"</td>");
            out.println("<td>"+ tabla1.getValueAt(t, 5)+"</td>");
            out.println("<td>"+ tabla1.getValueAt(t, 6)+"</td>");
            out.println("<td>"+ tabla1.getValueAt(t, 7)+"</td>");
         
            
            out.println("</tr>");
        }
        
        %>
      
    </tbody>
  </table>
        
            
            
            
            
            
            
            
            
        <form name="frmventa"  action="sr_ventas_detalle" method="post"  onsubmit="return validar_cantidad()" class="form-group"   >
                
            <label for ="lbl_id">Id</label>
            <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly>     
             
                 
            <label for="lbl_id_venta">Id_Venta</label>
            <select name ="drop_id_vmx"  id="drop_id_vmx" class="form-control"   >
               <% Ventas_detalle ventas_detalle = new Ventas_detalle();
              HashMap<String,String> drop3 = ventas_detalle.drop_id_vmx();
              for(String i: drop3.keySet()){
                  out.println("<option value='"+ i +"' >" + drop3.get(i) +"</option>");
                  }
          

              %> 
              
            </select> 
           
            
             <label for="lbl_id_producto">Producto</label>
         <select name ="drop_product"  id="drop_product" class="form-control"  >
               <% Ventas_detalle ventas_detalle03 = new Ventas_detalle();
              HashMap<String,String> drop03 = ventas_detalle03.drop_product();
              for(String i: drop03.keySet()){
                  out.println("<option value='"+ i +"' >" + drop03.get(i) +"</option>");
                  }
          

              %> 
              
            </select>  
           
             <label for="lbl_cantidad">Cantidad</label>
            <input type="number" name="txt_cantidad" id="txt_cantidad" class="form-control" value=0 onChange="multiplicar();"   placeholder="ejemploo apellido 1" >    
            
            <label for="lbl_precio_unitario">Precio_unitario</label>
            <input type="text" name="txt_precio_unitario" id="txt_precio_unitario" class="form-control" value=0 onChange="multiplicar();"   placeholder="ejemploo casa no " >    
            
            <label for="subtotal">SubTotal</label>
            <input type="text" name="txt_subtotal" id="txt_subtotal" class="form-control" readonly >
              
              
             
             
                  <br>
                
                  <br>
            
                  <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary "    >Agregar</button>
             <button  name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary">Modificar</button>
            <button  name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-primary"  onclick="javascript:if(!confirm('¿Desea Eliminar?'))return false">Eliminar</button>
             </form> 
              
             <br>
             <br>
        
               
        
          <table class="table table-hover">
    <thead>
      <tr>
       <th>Venta</th>
        <th>Producto</th>
        <th>Marca</th>
        <th>Cantidad</th>
        <th>Precio Unitario</th>
        <th>Subtotal</th>
        
        
      </tr>
    </thead>
    <tbody id="tbl_ventas_detalle1">
    <%
        Ventas_detalle ventas_detalle01 = new Ventas_detalle();
        DefaultTableModel tabla = new DefaultTableModel();
        
        tabla = ventas_detalle01.leer();
        for (int t=0;t <tabla.getRowCount();t++){
            out.println("<tr data-id="+tabla.getValueAt(t, 0)+" data-id_p="+tabla.getValueAt(t, 6)+">");
            out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 2)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 3)+"</td>");
            
            out.println("<td>"+ tabla.getValueAt(t, 4)+"</td>");
            out.println("<td>"+ tabla.getValueAt(t, 5)+"</td>");
              out.println("<td>"+ tabla.getValueAt(t, 6)+"</td>");
           
            
            out.println("</tr>");
            
        }
        
        %>
      
    </tbody>
  </table>
         
        
        
       </div>
          
        
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        <script src="css/alertify.min.js" type="text/javascript"></script>
           
        <script type="text/javascript">
            $('#tbl_ventas_detalle1').on('click','tr td',function(evt){
                var target,id,id_p,cantidad,precio_unitario,subtotal;
                target = $(event.target);
                id = target.parent().data('id');
                id_p=target.parent().data('id_p');
                cantidad=target.parent("tr").find("td").eq(3).html();
                precio_unitario =target.parent("tr").find("td").eq(4).html();
                subtotal =target.parent("tr").find("td").eq(5).html();
                
                $("#txt_id").val(id);
                $("#txt_cantidad").val(cantidad);
                $("#txt_precio_unitario").val(precio_unitario);
                 $("#txt_subtotal").val(subtotal);
                   $("#drop_product").val(id_p);
                
               
                
            });
            
        </script>
        
        
        <script>
            function multiplicar(){
        var n1 = document.getElementById('txt_cantidad').value;
        var n2 = document.getElementById('txt_precio_unitario').value;   
                
          var  r=n1*n2    ;
            document.getElementById("txt_subtotal").value = r;
            }
            
            
        </script>
        
        <script>
         function validar_cantidad(){
          can = document.frmventa.txt_cantidad.value; 
         if(can <! 0   ){
             alertify.alert("Error", "ingrese cantidad").set('label','ok');
             return false;
         }else{
             alertify.success("registrado");
             return true;
         }
             
         }  
       
       
            
        </script>


            
    </body>
</html>
