<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="facultyreg.aspx.cs" Inherits="admin_facultyreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section id="main-content">
	<section class="wrapper">
    <div class="row">
        <form id="form1" runat="server">
                           <div style="margin:5%; background-color:white; " >
                                <div style="background:#8b5c7e; padding:15px;"><span style=" color:white;font-weight:600;font-size:200%;"> TEACHER ENROLLMENT</span></div>
                               <div  style="padding:30px;">
                                  
                                   
                                   <div class="row">
                                   <div class="col-md-12">
                                       <label> Name:</label>
                                       <asp:TextBox ID="TextBox1"  runat="server" CssClass="form-control" autocomplete="off" Type="required"></asp:TextBox></div>
                                    </div>
                                   <label>Email:</label>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                   <label>Department:</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="80%" required="please" style="margin-left:0px; margin-top:5px; font-weight:600;"/>                                   
                                    <label>Address:</label> <br /><br />  
                                    <div class="row">
                                    <div class="col-md-6">            
                                   <label>Residential Address:</label>
                                  
                                   <asp:TextBox ID="TextBox6"  runat="server" CssClass="form-control" AutoComplete="off"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                   <label>Correspondence Address:</label>
                                   <asp:TextBox ID="TextBox7"  runat="server" CssClass="form-control" AutoComplete="off" ></asp:TextBox>
                                    </div>
                                    </div>
                                   <label>Image:</label>
                                   <asp:FileUpload ID="fu" runat="server" CssClass="form-control" />
                                   <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" Style="width:100px;margin-left:40%; margin-top:5% ;background:#8b5c7e; border:none;  padding:7px; color:white;" />                              

        
                               </div>
                          </div>
            </form>
             </div>
    
</section>
        </section>
</asp:Content>

