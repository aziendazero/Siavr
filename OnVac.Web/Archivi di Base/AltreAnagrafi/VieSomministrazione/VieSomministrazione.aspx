<%@ Page Language="vb" AutoEventWireup="false" Codebehind="VieSomministrazione.aspx.vb" Inherits="Onit.OnAssistnet.OnVac.OnVac_VieSomministrazione" %>

<%@ Register TagPrefix="ondp" Namespace="Onit.Controls.OnitDataPanel" Assembly="OnitDataPanel" %>
<%@ Register TagPrefix="on_lay3" Namespace="Onit.Controls.PagesLayout" Assembly="Onit.Controls.PagesLayout.OnitLayout3" %>
<%@ Register TagPrefix="on_otb" Namespace="Onit.Controls" Assembly="Onit.Controls.OnitTable" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>VieSomministrazione</title>

        <link href='<%= ResolveClientUrl("~/css/StylesPortale.css") %>' type="text/css" rel="stylesheet" />
        <link href='<%= ResolveClientUrl("~/css/Style_OnVac.css") %>' type="text/css" rel="stylesheet" />

        <script type="text/javascript" src='<%= Onit.OnAssistnet.OnVac.OnVacUtility.GetScriptUrl("onvac.common.js")%>'></script>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<on_lay3:onitlayout3 id="OnitLayout31" runat="server" width="100%" height="100%" Titolo="Vie Somministrazione" TitleCssClass="title3">
				<ondp:onitdatapanel id="odpVieSomministrazioneMaster" runat="server" useToolbar="False" Width="100%" renderOnlyChildren="True"
					ConfigFile="VieSomministrazione.odpVieSomministrazioneMaster.xml" Height="543px">
					<on_otb:onittable id="OnitTable1" runat="server" height="100%" width="100%">
						<on_otb:onitsection id="sezRicerca" runat="server" width="100%" typeHeight="content">
							<on_otb:onitcell id="cellaRicerca" runat="server" height="100%">
								<igtbar:UltraWebToolbar BrowserTarget="UpLevel" id="ToolBar" runat="server" ItemWidthDefault="80px" CssClass="infratoolbar">
                                    <DefaultStyle CssClass="infratoolbar_button_default"></DefaultStyle>
                                    <HoverStyle CssClass="infratoolbar_button_hover"></HoverStyle>
		                            <SelectedStyle CssClass="infratoolbar_button_selected"></SelectedStyle>
									<Items>
										<igtbar:TBarButton Key="btnCerca" Text="Cerca"></igtbar:TBarButton>
										<igtbar:TBSeparator></igtbar:TBSeparator>
										<igtbar:TBarButton Key="btnNew" Text="Nuovo"></igtbar:TBarButton>
										<igtbar:TBarButton Key="btnEdit" Text="Modifica"></igtbar:TBarButton>
										<igtbar:TBarButton Key="btnElimina" Text="Elimina"></igtbar:TBarButton>
										<igtbar:TBSeparator></igtbar:TBSeparator>
										<igtbar:TBarButton Key="btnSalva" Text="Salva"></igtbar:TBarButton>
										<igtbar:TBarButton Key="btnAnnulla" Text="Annulla"></igtbar:TBarButton>
									</Items>
								</igtbar:UltraWebToolbar>
								<div class="Sezione">Modulo ricerca</div>
								<ondp:wzFilter id="tabFiltri" runat="server" Width="100%" Height="70px" CssClass="InfraUltraWebTab2" TargetUrl="" Dummy>
									<DefaultTabStyle CssClass="InfraTab_Default2"></DefaultTabStyle>
									<SelectedTabStyle CssClass="InfraTab_Selected2"></SelectedTabStyle>
									<DisabledTabStyle CssClass="InfraTab_Disabled2"></DisabledTabStyle>
									<HoverTabStyle CssClass="InfraTab_Hover2"></HoverTabStyle>
									<Tabs>
										<igtab:Tab Text="Ricerca di Base">
											<ContentTemplate>
												<table height="100%" cellspacing="10" cellpadding="0" width="100%" border="0" style="table-layout: fixed">
													<tr>
														<td align="right" width="90">
															<asp:Label id="Label1" runat="server" CssClass="label">Filtro di Ricerca</asp:Label></td>
														<td>
															<asp:TextBox id="WzFilterKeyBase" runat="server" cssclass="textbox_stringa w100p"></asp:TextBox></td>
													</tr>
												</table>
											</ContentTemplate>
										</igtab:Tab>
									</Tabs>
								</ondp:wzFilter>
								<div class="Sezione">Elenco</div>
							</on_otb:onitcell>
						</on_otb:onitsection>
						<on_otb:onitsection id="sezRisultati" runat="server" width="100%" typeHeight="calculate">
							<on_otb:onitcell id="cellaRisultati" runat="server" height="100%" Width="100%" typescroll="auto">
								<ondp:wzDataGrid Browser="UpLevel" id="dgrVieSomministrazione" runat="server" Width="100%" Height="100%" EditMode="None" OnitStyle="False">
									<DisplayLayout ColWidthDefault="" AutoGenerateColumns="False" RowHeightDefault="26px" Version="2.00"
										GridLinesDefault="None" SelectTypeRowDefault="Single" ScrollBar="Never" BorderCollapseDefault="Separate"
										CellPaddingDefault="3" RowSelectorsDefault="No" Name="dgrVieSomministrazione" CellClickActionDefault="RowSelect">
										<HeaderStyleDefault CssClass="Infra2Dgr_Header"></HeaderStyleDefault>
										<RowSelectorStyleDefault CssClass="Infra2Dgr_RowSelector"></RowSelectorStyleDefault>
										<FrameStyle Width="100%"></FrameStyle>
										<ActivationObject BorderWidth="0px" BorderColor="Navy"></ActivationObject>
										<Images></Images>
										<SelectedRowStyleDefault CssClass="Infra2Dgr_SelectedRow"></SelectedRowStyleDefault>
										<RowAlternateStyleDefault CssClass="Infra2Dgr_RowAlternate"></RowAlternateStyleDefault>
										<RowStyleDefault CssClass="Infra2Dgr_Row"></RowStyleDefault>
									</DisplayLayout>
									<Bands>
										<igtbl:UltraGridBand>
											<Columns>
												<igtbl:UltraGridColumn HeaderText="&lt;input type=checkbox  OnClick='javascript:wzDataGrid_Master_Click(this,&amp;quot;dgrVieSomministrazione&amp;quot;);' /&gt;"
													Key="check" Width="0%" AllowUpdate="Yes" Hidden="True" Type="CheckBox">
													<Footer Key="check"></Footer>
													<Header Key="check" Caption="&lt;input type=checkbox  OnClick='javascript:wzDataGrid_Master_Click(this,&amp;quot;dgrVieSomministrazione&amp;quot;);' /&gt;"></Header>
												</igtbl:UltraGridColumn>
												<igtbl:UltraGridColumn HeaderText="Codice" Width="100px">
													<Footer Key="">
														<RowLayoutColumnInfo OriginX="1"></RowLayoutColumnInfo>
													</Footer>
													<Header Key="" Caption="Codice">
														<RowLayoutColumnInfo OriginX="1"></RowLayoutColumnInfo>
													</Header>
												</igtbl:UltraGridColumn>
												<igtbl:UltraGridColumn HeaderText="Descrizione" Width="100%">
													<Footer Key="">
														<RowLayoutColumnInfo OriginX="2"></RowLayoutColumnInfo>
													</Footer>
													<Header Key="" Caption="Descrizione">
														<RowLayoutColumnInfo OriginX="2"></RowLayoutColumnInfo>
													</Header>
												</igtbl:UltraGridColumn>
											</Columns>
										</igtbl:UltraGridBand>
									</Bands>
									<BindingColumns>
										<ondp:BindingFieldValue Value="" Editable="onNew" Description="CODICE" Connection="connessioneMaster" SourceTable="T_ANA_VIE_SOMMINISTRAZIONE"
											Hidden="False" SourceField="VII_CODICE"></ondp:BindingFieldValue>
										<ondp:BindingFieldValue Value="" Editable="always" Description="DESCRIZIONE" Connection="connessioneMaster"
											SourceTable="T_ANA_VIE_SOMMINISTRAZIONE" Hidden="False" SourceField="VII_DESCRIZIONE"></ondp:BindingFieldValue>
									</BindingColumns>
								</ondp:wzdatagrid>
							</on_otb:onitcell>
						</on_otb:onitsection>
						<on_otb:onitsection id="sezDettaglio" runat="server" width="100%" TypeHeight="Content">
							<on_otb:onitcell id="cellaDettaglio" runat="server" height="100%">
								<div class="Sezione">Dettaglio</div>
								<ondp:onitdatapanel id="odpVieSomministrazioneDetail" runat="server" useToolbar="False" Width="100%" renderOnlyChildren="True"
									ConfigFile="VieSomministrazione.odpVieSomministrazioneDetail.xml" Height="100px" externalToolBar-Length="7"
									externalToolBar="ToolBar" BindingFields="(Insieme)" dontLoadDataFirstTime="True">
									<table style="table-layout: fixed" cellspacing="3" width="100%" align="left" border="0">
										<colgroup>
											<col width="10%" />
											<col width="40%" />
											<col width="10%" />
											<col width="40%" />
										</colgroup>
										<tr>
											<td class="label">Codice</td>
											<td>
												<ondp:wzTextBox id="txtCodice" runat="server" maxlength="8" BindingField-SourceField="VII_CODICE"
                                                    onblur="toUpper(this);controlloCampoCodice(this);"
													BindingField-Hidden="False" BindingField-SourceTable="T_ANA_VIE_SOMMINISTRAZIONE" BindingField-Connection="connessioneSec"
													BindingField-Editable="onNew" CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p"
													CssStyles-CssRequired="TextBox_Stringa_Obbligatorio w100p" CssStyles-CssEnabled="TextBox_Stringa w100p"></ondp:wzTextBox></td>
										    <td class="label">Cod. Esterno</td>
											<td>
												<ondp:wzTextBox id="txtCodiceEsterno" runat="server" onblur="toUpper(this);"
                                                    maxlength="10" BindingField-SourceField="VII_CODICE_ESTERNO"
													BindingField-Hidden="False" BindingField-SourceTable="T_ANA_VIE_SOMMINISTRAZIONE" BindingField-Connection="connessioneSec"
													BindingField-Editable="always" CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p"
													CssStyles-CssEnabled="TextBox_Stringa w100p"></ondp:wzTextBox></td>
										</tr>
										<tr>
											<td class="label">Descrizione</td>
											<td>
												<ondp:wzTextBox id="txtDescrizione" runat="server" onblur="toUpper(this);"
                                                    maxlength="35" BindingField-SourceField="VII_DESCRIZIONE"
													BindingField-Hidden="False" BindingField-SourceTable="T_ANA_VIE_SOMMINISTRAZIONE" BindingField-Connection="connessioneSec"
													BindingField-Editable="always" CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p"
													CssStyles-CssRequired="TextBox_Stringa_Obbligatorio w100p" CssStyles-CssEnabled="TextBox_Stringa w100p"></ondp:wzTextBox></td>
                                            <td class="label">Codice AVN</td>
                                            <td>
                                                <ondp:wzTextBox id="txtAvn" runat="server" Width="100%" MaxLength="2" CssStyles-CssDisabled="textbox_stringa_disabilitato w100p"
										            CssStyles-CssEnabled="textbox_stringa w100p" CssStyles-CssRequired="textbox_stringa_obbligatorio w100p"
										            BindingField-Editable="always" BindingField-Connection="connessione" BindingField-SourceTable="T_ANA_VIE_SOMMINISTRAZIONE"
										            BindingField-Hidden="False" BindingField-SourceField="VII_CODICE_AVN"></ondp:wzTextBox></td>
										        </tr>
									</table>
								</ondp:onitdatapanel>
							</on_otb:onitcell>
						</on_otb:onitsection>
					</on_otb:onittable>
				</ondp:onitdatapanel>
			</on_lay3:onitlayout3>
        </form>
	</body>
</html>
