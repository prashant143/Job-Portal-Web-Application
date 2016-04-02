<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="job_apply_report.aspx.cs" Inherits="job_apply_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Panel ID="pnlperpage" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Black" Width="750px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Per Page Records:-
    
    <asp:DropDownList runat="server" ID="ddlperpage" AutoPostBack="True" 
            onselectedindexchanged="ddlperpage_SelectedIndexChanged" >
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
    </asp:DropDownList></asp:Panel>

    <h1 style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp; Job Applied Report</h1>
    <p style="color:Black; font-family:Monotype Corsiva; font-size:xx-large; font-weight: bolder; text-align:center;">
        &nbsp;</p>

<asp:Panel ID="Panel1" runat="server" Width="750px">
    &nbsp;&nbsp;Job:-&nbsp;<asp:DropDownList 
        ID="ddljob" runat="server" Width="100px">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp; Company Name:-
    <asp:DropDownList ID="ddlcompany" runat="server" Width="100px">
    </asp:DropDownList>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="height: 26px" Text="Find" />
    &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbtnall" runat="server" AutoPostBack="True" 
        GroupName="feedback" Text="All" />
&nbsp;
    <asp:RadioButton ID="rbtntoday" runat="server" AutoPostBack="True" 
        GroupName="feedback" Text="Today" />
    &nbsp;&nbsp;
    <asp:RadioButton ID="rbtncurrentmonth" runat="server" AutoPostBack="True" 
        GroupName="feedback" Text="Current Month" />
</asp:Panel>
 
         <asp:GridView ID="grdapplyjob" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#333333" 
         BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="jobapplied_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        AllowPaging="True" onpageindexchanging="grdapplyjob_PageIndexChanging" 
        style="margin-bottom: 25px;" PageSize="5">
            <Columns>
                <asp:TemplateField HeaderText="Job">
                    <ItemTemplate>
                        <asp:Label ID="lbljob" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Candidate Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcandidate" runat="server" Text='<%#Eval("username") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Company Name">
                    <ItemTemplate>
                        <asp:Label ID="lblcompname" runat="server" Text='<%#Eval("company_name") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 <asp:TemplateField HeaderText="Apply Date">
                    <ItemTemplate>
                        <asp:Label ID="lblapplydate" runat="server" Text='<%#Eval("applied_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>


            </Columns>
            
            <HeaderStyle BackColor="#333333" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" VerticalAlign="Middle" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>

</asp:Content>

