<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Student-Registered.aspx.cs" Inherits="admin_Student_Registered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <style>
        .myday {
              border: outset 2px #fbfbfb;
              padding:7px;
        }
        .myCalendarDayHeader 
        {
             padding:7px;
             height:25px;
             border-bottom: outset 2px #fbfbfb; 
             border-right: outset 2px #fbfbfb; 
        }
    </style>
   <section id="main-content">
	<section class="wrapper">
         <div class="row">
             
                        <form class="form1" runat="server">
                            <center><h1 style="color:#333; font-family:Forte;">STUDENT REGISTERED</h1></center>
                               <div class="tb" style="margin:1%;">
                                            <asp:label ID="label1" runat="server" Style="font-size:20px;font-weight:600; ">Students between</asp:label>
                                   <div class="row" style=" ">
                                       <div class="col-md-2" style="padding:5px; margin-left:15px;">
                                          <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                     </div>   
                                   </div>    
                                         <asp:label ID="label2" runat="server" Style="font-size:20px;font-weight:600; ">and </asp:label>
                                   <div class="row" style="">
                                       <div class="col-md-2" style="padding:5px; margin-left:15px;">
                                         <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>  
                                   <div class="row" style="">
                                       <div class="col-md-4">
                                       <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Style="background:#333; border:none; width:50%; padding:7px; color:white; margin:5%;"/>
                                        </div>
                                       <div class="col-md-4">
                                            <asp:Button ID="Button2" runat="server" Text="View All" OnClick="Button2_Click" Style="background:#333;float:left; border:none; width:50%; padding:7px; color:white; margin:5%;"/>
                            </div>
                                       </div>
                                       </div>
                                        <div class="table-responsive">      
                               <asp:GridView ID="GridView1" runat="server" style=" margin:5%; background-color:white; width:50%;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns >
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                        <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" />
                        <asp:BoundField DataField="mname" HeaderText="Mname" SortExpression="mname" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="paddress" HeaderText="Res. Address" SortExpression="paddress" />
                        <asp:BoundField DataField="caddress" HeaderText="Corr. Address" SortExpression="caddress" />
                        <asp:TemplateField HeaderText="Image" SortExpression="image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Width="100" Height="100" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                        <asp:BoundField DataField="examroll" HeaderText="examroll" SortExpression="examroll" />
                    </Columns>

                </asp:GridView>
                                 </div>
                                  
                              </form> 
                          </div>
           
            
    </section>
       </section>
</asp:Content>

