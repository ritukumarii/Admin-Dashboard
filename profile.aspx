<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <section id="main-content">
	<section class="wrapper">
    <form id="form1" runat="server">
        <div class="row">
              <div class="col-md-5" >
                        <div style="background:#333; margin:4px; margin-left:10px;">
                            <img alt="" src="images/4.jpg"  Height = "100" Width = "100" style="border-radius:50%; margin:10px; border:solid 3px;">
                            <label Style="margin-left:20%; color:white; font-size:30px;">WELCOME</label>
                        </div>
                    ` <div >
                        <label Style="margin-left:20px; color:white; font-size:30px;">NAME:</label>
                         <u>   <asp:Label ID="lbluser" runat="server" Style="margin-left:10px; color:white; font-size:20px;"></asp:Label></u>
                        </div>
                  ` <div >
                      <asp:Button ID="Button1" runat="server" Text="Edit Profile" Style="background:#333; border:none; width:40%; padding:7px; color:white; margin:5%;" Visible="true" OnClick="Button1_Click" /><br />
                        <asp:Label ID="Label1" runat="server" Style="margin-left:10px; color:white; font-size:20px;" Visible="false">Enter Name:</asp:Label>
                      <asp:TextBox ID="TextBox1" runat="server" Visible="false" CssClass="form-control" style="width:70%; margin:10px;"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Style="margin-left:10px; color:white; font-size:20px;" Visible="false">Enter Current Password:</asp:Label>
                      <asp:TextBox ID="TextBox2" runat="server" Visible="false"  CssClass="form-control"  style="width:70%; margin:10px;" Type="password"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server" Style="margin-left:10px; color:white; font-size:20px;" Visible="false">Enter New Password:</asp:Label>
                      <asp:TextBox ID="TextBox3" runat="server" Visible="false"  CssClass="form-control"  style="width:70%; margin:10px;" Type="password"></asp:TextBox>
                      <asp:Button ID="Button2" runat="server" Text=" Submit" Style="background:#333; border:none; width:40%; padding:5px; color:white; margin:5%; " OnClick="Button2_Click" Visible="false" />

                        </div>
                  </div>
                  <div class="col-md-6 agile-calendar">
			<div class="calendar-widget">
                <div class="panel-heading ui-sortable-handle">
					<span class="panel-icon">
                      <i class="fa fa-calendar-o"></i>
                    </span>
                    <span class="panel-title"> Calendar Widget</span>
                </div>
				<!-- grids -->
					<div class="agile-calendar-grid">
						<div class="page">
							
							<div class="w3l-calendar-left">
								<div class="calendar-heading">
									
								</div>
								<div class="monthly" id="mycalendar"></div>
							</div>
							
							<div class="clearfix"> </div>
						</div>
					</div>
			</div>
		</div>
                 
                </div> 
    </form>
        </section>
         </section>
</asp:Content>

