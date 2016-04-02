﻿<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="view_save_candidate_company.aspx.cs" Inherits="view_save_candidate_company" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ToolkitScriptManager 
                ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <div class="article"><h1 style="color:White;"><asp:Label ID="lblmessage" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large"></asp:Label></h1></div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
    <asp:GridView ID="grdapplyjob" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#333333" 
         BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="saved_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        AllowPaging="True" PageSize="10" 
                onpageindexchanging="grdapplyjob_PageIndexChanging" 
                onrowdeleting="grdapplyjob_RowDeleting" 
                onrowupdating="grdapplyjob_RowUpdating">
            <Columns>

                
                 <asp:TemplateField HeaderText="Candidate Name">
                    <ItemTemplate>
                        <asp:Label ID="lbljobseekername" runat="server" Text='<%#Eval("username") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                <asp:TemplateField HeaderText="Job">
                    <ItemTemplate>
                        <asp:Label ID="lbljob" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                    
                    <asp:TemplateField HeaderText="Resume">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnresume" runat="server" Text='<%#Eval("path") %>' CommandName="update">'></asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 <asp:TemplateField HeaderText="Detail">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete">Jobseeker Detail</asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>

            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" VerticalAlign="Middle" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>


        </asp:View>
        <asp:View ID="View2" runat="server">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <div class="article"><h1 style="color:White;"><asp:Label ID="Label1" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large"></asp:Label></h1></div>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Font-Size="X-Large" ForeColor="Black" 
                GroupingText="Personal Information">
            
        <table style="width: 70%; font-size: small; color: #008080;">
                
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; First Name:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblfname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;Middle Name:</td>
                    <td class="style1">
                        &nbsp;&nbsp;
                        <asp:Label ID="lblmname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; Last Name:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbllname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;Address:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbladd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;City:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; State:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblstate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; Country:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcountry" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; Gender:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblgender" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;Date Of Birth:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbldob" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;Contact No:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcno" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp; Email-id:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblemail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;Merital Status:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblstatus" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;Religion:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblreligion" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>           
     </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Font-Size="X-Large" ForeColor="Black" 
                GroupingText="Education Information">
            
        <table style="width: 70%; font-size: small; color: #008080;">
                
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; 10th Percentage:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl10per" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;12th Percentage:</td>
                    <td class="style1">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl12per" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Graduation:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblgradu" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;Institute Graduation:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblgraduinsti" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;Graduation Percentage:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblpergradu" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Post Graduation:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblpostgradu" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Post Graduation Institute:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblpostgraduinsti" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Post Graduation Percent:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblpostgraduper" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;PHD:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblphd" runat="server"></asp:Label>
                    </td>
                </tr>
               
            </table>           
     </asp:Panel>


     <asp:Panel ID="Panel4" runat="server" Font-Size="X-Large" ForeColor="Black" 
                GroupingText="Experience Information">
            <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center" border="2px">
      <tr>
          <td class="style2" colspan="2">
              <asp:Label ID="Label2" runat="server"></asp:Label>
          </td>
          
      </tr>
      <tr>
          <td class="style12">
              </td>
          <td class="style13" style="color: #000000; font-weight: bold">
              Company name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year:&nbsp;&nbsp;&nbsp; &nbsp;Month:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; job Post&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leave 
              Resion:</td>
      </tr>
      
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Current employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblyear" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;
              <asp:Label ID="lblmonth" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob" runat="server" Width="120px"></asp:Label>
              &nbsp;<asp:Label ID="lblreasion" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Previos employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname1" runat="server" Width="120px"></asp:Label>
              &nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblyear1" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;
              <asp:Label ID="lblmonth1" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob1" runat="server" Width="120px"></asp:Label>
              &nbsp;
              <asp:Label ID="lblreasion1" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style15" style="font-weight: bold; color: #000000;">
              Past employer:</td>
          <td class="style11">
              &nbsp;
              <asp:Label ID="lblexpcompname2" runat="server" Width="120px"></asp:Label>
              &nbsp; &nbsp;&nbsp;<asp:Label ID="lblyear2" runat="server" 
                  Width="50px"></asp:Label>
              &nbsp;&nbsp;
              <asp:Label ID="lblmonth2" runat="server" Width="50px"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lbljob2" runat="server" Width="120px"></asp:Label>
              &nbsp;
              <asp:Label ID="lblreasion2" runat="server" Width="120px"></asp:Label>
          </td>
      </tr>
      
      </table>
                 
     </asp:Panel>






       <asp:Panel ID="Panel3" runat="server" Font-Size="X-Large" ForeColor="Black" 
                GroupingText="Professional Information">
            
        <table style="width: 70%; font-size: small; color: #008080;">
                
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Key Skill:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblskill" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        &nbsp;&nbsp;&nbsp;&nbsp;Job Profile:</td>
                    <td class="style1">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbljobprofile" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Position Type:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblpostype" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;Category:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcategory" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp;&nbsp;Minimum Salary:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblminsal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Currency:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcurrency" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Industry:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblindustry" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;&nbsp;&nbsp; Industry Role:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblindustryrole" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#333333" Font-Bold="True" 
                            Font-Names="Book Antiqua" Font-Size="Large" ForeColor="White" Height="35px" 
                            onclick="btnedit_Click" Text="Move" Width="104px" />
                        <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                            Enabled="True" TargetControlID="Button1">
                        </asp:RoundedCornersExtender>
                        <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                            Enabled="True" TargetControlID="Button1">
                        </asp:DropShadowExtender>
                    </td>
                </tr>
            </table>           
     </asp:Panel>      
        </asp:View>
    </asp:MultiView>


</asp:Content>

