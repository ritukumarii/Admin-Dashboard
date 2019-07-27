<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="complaintmis.aspx.cs" Inherits="admin_complaintmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
   <section id="main-content">
	<section class="wrapper">
         <div class="row" style="padding:0px;">
                            <center><h1 style="color:#333; font-family:Forte;"> COMPLAINTS</h1></center>
             
                           
                               <div class="tb" style="margin:5%; margin-top:0px;">
                                   <div class="table-responsive">
                                       <asp:Label ID="Label1" runat="server" Text="Show Complaints and Queries?" Style="font-weight:600;"></asp:Label><br />
                                         <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="Button1_Click" Style="background:#333; border:none; width:30%; padding:7px; color:white; margin:2%; margin-left:0px;"/>
                                   <asp:GridView ID="GridView1" runat="server" style="margin-top:80px; margin-right:80px; background-color:white; width:1000;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>      
                             
                        <asp:BoundField DataField="comp" HeaderText="Complaints/queries:" SortExpression="comp" />
                        </columns>
                        </asp:GridView>
                                  
                                       </div>
                                   </div>
             </div>
        </section>
       </section>
        </form>
</asp:Content>

