<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="stockmis.aspx.cs" Inherits="admin_stockmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <section id="main-content">
        <section class="wrapper"> 
            <form id="form1" runat="server">  
                            <center><h1 style="color:#333; font-family:Forte;">STOCK DETAILS</h1></center>
                    
              <div class="row" style="margin:10%;">
         
                               <asp:GridView ID="GridView1" runat="server" style=" margin-left:0; background-color:white;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id">

                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="code" HeaderText="ItemCode" SortExpression="code" />
                        <asp:BoundField DataField="name" HeaderText="ItemName" SortExpression="name" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                        <asp:BoundField DataField="dop" HeaderText="purchasedate" SortExpression="dop" />
                        <asp:BoundField DataField="warrperiod" HeaderText="Warranty" SortExpression="warrperiod" />
                        
                         </Columns>

                </asp:GridView>
                 </div>   
                           
               </form>            
       </section>
        </section>
</asp:Content>

