<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Postjob_report.aspx.cs" Inherits="Postjob_report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
     
    <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Per Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" 
            onselectedindexchanged="ddlperpage_SelectedIndexChanged" >
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
    </asp:DropDownList></asp:Panel>

    <h1 style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Job Report</h1>
    <p style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">
        &nbsp;</p>

<asp:Panel ID="Panel1" runat="server" Width="750px">
   
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            Company Name:-&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtnall" runat="server" AutoPostBack="True" 
                GroupName="feedback" Text="All" />
            &nbsp;
            <asp:RadioButton ID="rbtntoday" runat="server" AutoPostBack="True" 
                GroupName="feedback" Text="Today" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="rbtncurrentmonth" runat="server" AutoPostBack="True" 
                GroupName="feedback" Text="Current Month" />
       </asp:Panel>
   
 <asp:GridView ID="GridView1" runat="server" Width="750px"
     BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        BackColor="#333333" AllowPaging="True" 
        style="margin-bottom: 20px;" BorderStyle="Outset"

            AutoGenerateColumns="False" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        DataKeyNames="jobpost_id" 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
        EnableViewState="False" onrowdeleting="GridView1_RowDeleting" >
        <Columns>
        
                
                <asp:TemplateField HeaderText="company name">
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%#Eval("Company_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Job title">
                    <ItemTemplate>
                        <asp:Label ID="lbltitle" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="Vacancy">
                    <ItemTemplate>
                        <asp:Label ID="lblvacancy" runat="server" Text='<%#Eval("no_of_vacancy") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                  <asp:TemplateField HeaderText="jobpost date">
                    <ItemTemplate>
                        <asp:Label ID="lblpostdate" runat="server" Text='<%#Eval("jobpost_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Max Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblmaxsal" runat="server" Text='<%#Eval("Max_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Min Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblminsal" runat="server" Text='<%#Eval("min_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                  <asp:BoundField DataField="app_end_date" HeaderText="Application End Date" DataFormatString="{0:M-dd-yyyy}">
                <ItemStyle />
            </asp:BoundField>
           

                <asp:TemplateField HeaderText="Require Expe">
                    <ItemTemplate>
                        <asp:Label ID="lblreqexp" runat="server" Text='<%#Eval("require_exper") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Require Skill">
                    <ItemTemplate>
                        <asp:Label ID="lblreqskill" runat="server" Text='<%#Eval("require_skill") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Require Education">
                    <ItemTemplate>
                        <asp:Label ID="lblreqedu" runat="server" Text='<%#Eval("require_edu") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <%-- <asp:BoundField DataField="interview_date" HeaderText="Interview Date" DataFormatString="{0:M-dd-yyyy}">
                <ItemStyle />
            </asp:BoundField>
--%>           <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon_delete.gif" CommandName="delete"/>

                       <%-- <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="delete" />--%>
                    </ItemTemplate>
                    
                </asp:TemplateField>

                </Columns>
            <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Right" VerticalAlign="Middle" />

    </asp:GridView>  

</asp:Content>

