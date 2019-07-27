<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="requirementmis.aspx.cs" Inherits="admin_requirementmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
        <form id="form1" runat="server">
                            <center><h1 style="color:#333; font-family:Forte;"> REQUIREMENT </h1></center>

         <div class="row" style="margin:5%;">
                                 
                               <asp:GridView ID="GridView1" runat="server" style=" margin-left:0; background-color:white;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns >
                        <asp:BoundField DataField="itemname" HeaderText="Item Name" SortExpression="itemname" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                        
                    </Columns>

                </asp:GridView>
                                   </div>
     </form>
        </section>
        </section>
</asp:Content>

