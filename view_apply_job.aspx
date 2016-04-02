<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_apply_job.aspx.cs" Inherits="view_apply_job" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <div class="article"><h1> <asp:Label ID="lblmessage" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large" ForeColor="White"></asp:Label></h1></div>
            <br />
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <br />
    <br />
    <br />
 
         <asp:GridView ID="grdapplyjob" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#333333" 
         BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="jobapplied_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        AllowPaging="True" 
        onpageindexchanging="grdapplyjob_PageIndexChanging" 
                onrowdeleting="grdapplyjob_RowDeleting" 
                onselectedindexchanged="grdapplyjob_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Job">
                    <ItemTemplate>
                        <asp:Label ID="lbljob" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Interview Date">
                    <ItemTemplate>
                        <asp:Label ID="lblinterview" runat="server" Text='<%#Eval("interview_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%#Eval("company_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 <asp:TemplateField HeaderText="Detail">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server"  CommandName="delete">Company Detail</asp:LinkButton>
                    </ItemTemplate>
                 </asp:TemplateField>

            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" VerticalAlign="Middle" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>

        </asp:View>
   <%--     <asp:View ID="View2" runat="server">
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <div class="article"> <h1 style="color:White;"> <asp:Label ID="lblmsg1" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large"></asp:Label></h1></div>
            <table style="width: 70%;">
                <tr>
                    <td class="style1" colspan="2">
                        <br /><hr /><hr /><br /></td>
                </tr>
                
                <tr>
                    <td class="style1">
                        &nbsp; Company Name:</td>
                    <td>
                        &nbsp;
                        <asp:Label ID="lblname" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; Company Address:</td>
                    <td>
                        &nbsp;
                        <asp:Label ID="lbladd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; Company Logo:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; City:</td>
                    <td>
                        &nbsp;
                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; State:&nbsp;</td>
                    <td>
                        &nbsp;
                        <asp:Label ID="lblstate" runat="server"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; Country:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcountry" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; ZipCode:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblzipcode" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; C.E.O&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblceo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; Contect No:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcontect" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; Email:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblemail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp; WebSite:&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblsite" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;&nbsp; Company Detail:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lbldetail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;&nbsp; Industry Type:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblindustry" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;&nbsp; Company Category:</td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="lblcategory" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                            Font-Names="Book Antiqua" Font-Size="Large" ForeColor="White" Height="35px" 
                            Text="Move" Width="104px" onclick="btnedit_Click" />
                     
                        <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                            Enabled="True" TargetControlID="btnedit">
                        </asp:RoundedCornersExtender>
                        <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                            Enabled="True" TargetControlID="btnedit">
                        </asp:DropShadowExtender>
                     
                        &nbsp;</td>
                    
                </tr>
            </table>
        </asp:View>
   --%> </asp:MultiView>
</asp:Content>

