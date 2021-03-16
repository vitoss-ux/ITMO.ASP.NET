<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="ASP.net_Labs.SummaryBD" MasterPageFile="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Список участников</h2>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" SortExpression="Phone" />
                    <asp:CheckBoxField DataField="WillAttend" HeaderText="WillAttend" ReadOnly="True" SortExpression="WillAttend" />
                    <asp:BoundField DataField="Rdata" HeaderText="Registration data" ReadOnly="True" SortExpression="Rdata" DataFormatString="{0:d}" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="ASP.net_Labs.SampleContext" EntityTypeName="" Select="new (Name, Email, Phone, WillAttend, Reports, Rdata)" TableName="GuestResponses">
            </asp:LinqDataSource>
        </div>
</asp:Content>
