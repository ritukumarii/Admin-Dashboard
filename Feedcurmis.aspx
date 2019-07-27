<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Feedcurmis.aspx.cs" Inherits="admin_Feedcurmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <section id="main-content">
        <section class="wrapper">
 <form id="form1" runat="server">
                            <center><h1 style="color:#333; font-family:Forte;">CURRICULUM FEEDBACKS</h1></center>      
         <div class="row" style="margin:2%; margin-top:0px;">
             
                               <div class="table-responsive">
                               <asp:GridView ID="GridView1" runat="server" style="margin-top:80px; margin-right:80px; background-color:white; width:1000;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="false" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="paddress" HeaderText="Paddress" SortExpression="paddress" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="contact" HeaderText="Contact No:" SortExpression="contact" />
                        <asp:BoundField DataField="yearadmission" HeaderText="Year Of Addmission" SortExpression="yearadmission" />
                        <asp:BoundField DataField="yearpassing" HeaderText="Year Of Passing" SortExpression="yearpassing" />
                        <asp:BoundField DataField="curtype" HeaderText="Curriculum Type?" SortExpression="curtype" />

                        <asp:BoundField DataField="instructype" HeaderText=" Are Instructions easy?" SortExpression="instructype" />
                        <asp:BoundField DataField="readmat" HeaderText="Reading Materials easily found?" SortExpression="readmat" />
                        <asp:BoundField DataField="reljob" HeaderText=" Are Subjects Relevant?" SortExpression="reljob" />
                        <asp:BoundField DataField="subappl" HeaderText=" Are Subjects Applicable?" SortExpression="subappl" />
                        <asp:BoundField DataField="persnlty" HeaderText="Personality Developing?" SortExpression="persnlty" />
                        <asp:BoundField DataField="curuseful" HeaderText="Any Useful part of curriculum" SortExpression="curuseful" />
                        <asp:BoundField DataField="change" HeaderText="Any other Changes" SortExpression="change" />
                        <asp:BoundField DataField="addcom" HeaderText="Additional comments" SortExpression="addcom" />
                        
                        
                     </Columns>

                </asp:GridView>
                 </div>   
                           
                               </div>
      </form>
              </section>
    </section>
       
</asp:Content>


