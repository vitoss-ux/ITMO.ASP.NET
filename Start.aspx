<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="ASP.net_Labs.Start" MasterPageFile="~/Site.master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <div class="rek">
                 <h1>Приглашение на семинар<asp:ScriptManager ID="ScriptManager1" runat="server">
                     </asp:ScriptManager>
                 </h1>
                 <p>Вы приглашены на наш семинар</p>
                 <p>Подтвердите свое согласие, пройдя регистрацию</p>
            </div>
            <div class="info">
                 Семинар состоится 1 января <%=DateTime.Now.Year+1%> года в 7.30
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     <ContentTemplate>
                         <asp:Timer id="Timer" runat="server" Interval="1000"></asp:Timer>
                          <%DateTime dataseminar = new DateTime(DateTime.Now.Year+1,3,1,7,30,0);
                            DateTime dnow = DateTime.Now;
                            int rd = (dataseminar - dnow).Days;
                            int rm = (dataseminar - dnow).Minutes;
                            int rsec = (dataseminar - dnow).Seconds;%>
                         <h2>До семинара осталось <%=rd.ToString()%> дн., <%=rm.ToString()%> мин. и <%=rsec.ToString()%> с.</h2>
                     </ContentTemplate>
                 </asp:UpdatePanel>
            </div>
        </div>
</asp:Content>