<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="stockentry.aspx.cs" Inherits="admin_stockentry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <section id="main-content">
       <section class="wrapper">
                    <div class="row">
                         <div style="margin:5%; background-color:white; " >
                                <div style="background:#8b5c7e; padding:15px;"><span style=" color:white;font-weight:600;font-size:200%;">STOCK ENTRY</span></div>
                             <div style="padding:30px;">
                                 <form id="form1" runat="server">
                                   <label>Item Code:</label>
                                   <asp:DropDownList Id="DropDownList1" runat="server"  CssClass="form-control" Width="100px" required="please"  >
                                         <asp:ListItem Enabled="true" Text="Select" Value="-1"></asp:ListItem>
                                       <asp:ListItem Text="Electronics" Value="Electronics"></asp:ListItem>
                                       <asp:ListItem Text="Sports" Value="Sports"></asp:ListItem>
                                        <asp:ListItem Text="Musics" Value="Music"></asp:ListItem>
                                       <asp:ListItem Text="Library Books" Value="Books"></asp:ListItem>
                                     </asp:DropDownList>  
                                   <label>Name:</label>
                                   <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                   <label>Quantity:</label>
                                   <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                   <label>Amount:</label>
                                   <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                   <label>Date Of Purchase;</label>
                                   <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                   <label>Warranty Period:</label>
                                   <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                   <br />
                                   <asp:Button ID="Button1" runat="server" Text="SUBMIT" Style="width:100px; margin-left:40%; margin-top:5% ;background:#8b5c7e; border:none;  padding:7px; color:white;" Width="200px" CssClass="active" OnClick="Button1_Click"/>
                                     </form>
                                 </div> 
                          </div>
             </div>
          
    </section>
       </section>
</asp:Content>

