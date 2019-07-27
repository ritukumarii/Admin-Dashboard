<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Feedprofmis.aspx.cs" Inherits="Feedprofmis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    <section id="main-content">
        <section class="wrapper">
                            <center><h1 style="color:#333; font-family:Forte;">PROFESSOR FEEDBACKS</h1></center>      

      
         <div class="row" style="margin:2%;">
             
                               <div class="table-responsive">
                               <asp:GridView ID="GridView1" runat="server" style="margin-top:80px; margin-right:80px; background-color:white; width:1000;" CssClass="table table-hover" EmptyDataText="NO RECORD FOUND" AutoGenerateColumns="false" DataKeyNames="id" >
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                        <asp:BoundField DataField="tname" HeaderText="Faculty Name" SortExpression="tname" />
                        <asp:BoundField DataField="beg" HeaderText="Begins classes on time?" SortExpression="beg" />
                        <asp:BoundField DataField="complete" HeaderText="Completes syllabus on time?" SortExpression="complete" />
                        <asp:BoundField DataField="iswell" HeaderText="Iswell prepared for class?" SortExpression="iswell" />
                        <asp:BoundField DataField="isorg" HeaderText="Isorganised" SortExpression="isorg" />
                        <asp:BoundField DataField="encour" HeaderText="Encourageous" SortExpression="encour" />
                        <asp:BoundField DataField="answer" HeaderText="Answer questions?" SortExpression="answer" />
                        <asp:BoundField DataField="encourage" HeaderText="Encourage students to ask questions" SortExpression="encourage" />
                        <asp:BoundField DataField="respond" HeaderText="Responses" SortExpression="respond" />
                        <asp:BoundField DataField="know" HeaderText="Know the subject matter" SortExpression="know" />
                        <asp:BoundField DataField="abc" HeaderText="Returns testpapers/assignments on time" SortExpression="abc" />
                       
                        
                     </Columns>

                </asp:GridView>
                 </div>   
                           
                               </div>
              </section>
    </section>
         </form>
</asp:Content>

