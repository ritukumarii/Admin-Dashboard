<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="feesubmis.aspx.cs" Inherits="admin_feesubmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
     <form id="form1" runat="server">
    <section id="main-content">
        <section class="wrapper">

                            <center><h1 style="color:#333; font-family:Forte;">FEE SuBMISSION DETAILS</h1></center>
      
         <div class="row" style="margin:5%; margin-top:0px;">
             
                               <div class="table-responsive">
                               <asp:GridView ID="GridView1" runat="server" style="margin-top:80px; margin-right:80px; background-color:white; width:1000;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="roll" HeaderText="Roll" SortExpression="roll" />
                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                       
                        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                        <asp:BoundField DataField="sub_date" HeaderText="Submission" SortExpression="sub_date" />
                       
                        
                     </Columns>

                </asp:GridView>
                 </div>   
                           
                               </div>
              </section>
    </section>
         </form>
</asp:Content>




