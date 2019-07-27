<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="contactmis.aspx.cs" Inherits="admin_contactmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <section id="main-content">
	<section class="wrapper">
    <form id="form1" runat="server">
         <div class="row" style="padding:0px;">
                            <center><h1 style="color:#333; font-family:Forte;">CONTACTS</h1></center>
             
                           
                               <div class="tb" style="margin:5%; margin-top:0px;">
                                   <div class="table-responsive">
                                   <asp:GridView ID="GridView1" runat="server" style="margin-top:80px; margin-right:80px; background-color:white;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id" >
                    <Columns>      
                             
                         <asp:BoundField DataField="name" HeaderText="NAME"  ReadOnly="True" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="PHONE No." SortExpression="phone" />
                        <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
                        </columns>
                        </asp:GridView>
                                  
                                       </div>
                                   </div>
             </div>
        </form>
        </section>
          </section>
</asp:Content>

