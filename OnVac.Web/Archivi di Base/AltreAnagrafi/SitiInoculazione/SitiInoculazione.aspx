<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SitiInoculazione.aspx.vb" Inherits="Onit.OnAssistnet.OnVac.OnVac_SitiInoculazione" %>

<%@ Register TagPrefix="on_otb" Namespace="Onit.Controls" Assembly="Onit.Controls.OnitTable" %>
<%@ Register TagPrefix="on_lay3" Namespace="Onit.Controls.PagesLayout" Assembly="Onit.Controls.PagesLayout.OnitLayout3" %>
<%@ Register TagPrefix="ondp" Namespace="Onit.Controls.OnitDataPanel" Assembly="OnitDataPanel" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>SitiInoculazione</title>

        <link href='<%= ResolveClientUrl("~/css/StylesPortale.css") %>' type="text/css" rel="stylesheet" />
        <link href='<%= ResolveClientUrl("~/css/Style_OnVac.css") %>' type="text/css" rel="stylesheet" />

        <script type="text/javascript" src='<%= Onit.OnAssistnet.OnVac.OnVacUtility.GetScriptUrl("onvac.common.js")%>'></script>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<on_lay3:onitlayout3 id="OnitLayout31" runat="server" width="100%" height="100%" Titolo="Siti Inoculazione" TitleCssClass="title3">
				<ondp:OnitDataPanel id="odpSitiInoculazioneMaster" runat="server" Height="543px" ConfigFile="SitiInoculazione.odpSitiInoculazioneMaster.xml" renderOnlyChildren="True" Width="100%" useToolbar="False">
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
								<ondp:wzFilter id="tabFiltri" runat="server" Height="70px" Width="100%" CssClass="InfraUltraWebTab2">
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
								<ondp:wzDataGrid Browser="UpLevel" id="dgrSitiInoculazione" runat="server" Height="100%" Width="100%" OnitStyle="False" EditMode="None">
									<DisplayLayout ColWidthDefault="" AutoGenerateColumns="False" RowHeightDefault="26px" Version="2.00" GridLinesDefault="None" SelectTypeRowDefault="Single" ScrollBar="Never" BorderCollapseDefault="Separate" CellPaddingDefault="3" RowSelectorsDefault="No" Name="dgrSitiInoculazione" CellClickActionDefault="RowSelect">
										<HeaderStyleDefault CssClass="Infra2Dgr_Header"></HeaderStyleDefault>
										<RowSelectorStyleDefault CssClass="Infra2Dgr_RowSelector"></RowSelectorStyleDefault>
										<FrameStyle Width="100%"></FrameStyle>
										<ActivationObject BorderWidth="0px" BorderColor="Navy"></ActivationObject>
										<SelectedRowStyleDefault CssClass="Infra2Dgr_SelectedRow"></SelectedRowStyleDefault>
										<RowAlternateStyleDefault CssClass="Infra2Dgr_RowAlternate"></RowAlternateStyleDefault>
										<RowStyleDefault CssClass="Infra2Dgr_Row"></RowStyleDefault>
									</DisplayLayout>
									<Bands>
										<igtbl:UltraGridBand>
											<Columns>
												<igtbl:UltraGridColumn HeaderText="&lt;input type=checkbox  OnClick='javascript:wzDataGrid_Master_Click(this,&amp;quot;dgrSitiInoculazione&amp;quot;);' /&gt;" Key="check" Width="0%" Hidden="True" Type="CheckBox" BaseColumnName="" AllowUpdate="Yes"></igtbl:UltraGridColumn>
												<igtbl:UltraGridColumn HeaderText="Codice" Key="" Width="100px" BaseColumnName=""></igtbl:UltraGridColumn>
												<igtbl:UltraGridColumn HeaderText="Descrizione" Key="" Width="100%" BaseColumnName=""></igtbl:UltraGridColumn>
											</Columns>
										</igtbl:UltraGridBand>
									</Bands>
									<BindingColumns>
										<ondp:BindingFieldValue Value="" Editable="onNew" Description="CODICE" Connection="connessioneMaster" SourceTable="T_ANA_SITI_INOCULAZIONE" Hidden="False" SourceField="SII_CODICE"></ondp:BindingFieldValue>
										<ondp:BindingFieldValue Value="" Editable="always" Description="DESCRIZIONE" Connection="connessioneMaster" SourceTable="T_ANA_SITI_INOCULAZIONE" Hidden="False" SourceField="SII_DESCRIZIONE"></ondp:BindingFieldValue>
									</BindingColumns>
								</ondp:WzDataGrid>
							</on_otb:onitcell>
						</on_otb:onitsection>
						<on_otb:onitsection id="sezDettaglio" runat="server" width="100%" TypeHeight="Content">
							<on_otb:onitcell id="cellaDettaglio" runat="server" height="100%">
								<div class="Sezione">Dettaglio</div>
								<ondp:OnitDatapanel id="odpSitiInoculazioneDetail" runat="server" Height="100px" ConfigFile="SitiInoculazione.odpSitiInoculazioneDetail.xml" renderOnlyChildren="True" Width="100%" useToolbar="False" dontLoadDataFirstTime="True" BindingFields="(Insieme)" externalToolBar="ToolBar" externalToolBar-Length="7">
									<table cellspacing="3" width="100%" align="left" border="0" style="table-layout: fixed">
                                        <colgroup>
                                 	        <col width="10%" />
											<col width="40%" />
											<col width="10%" />
											<col width="40%" />
                                        </colgroup>
										<tr>
											<td class="label">Codice</td>
											<td>
												<ondp:wzTextBox id="txtCodice" runat="server" onblur="toUpper(this);controlloCampoCodice(this);" maxlength="8"
                                                    CssStyles-CssEnabled="TextBox_Stringa w100p" CssStyles-CssRequired="TextBox_Stringa_Obbligatorio w100p" 
                                                    CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p" BindingField-Editable="onNew" BindingField-Connection="connessioneSec" 
                                                    BindingField-SourceTable="T_ANA_SITI_INOCULAZIONE" BindingField-Hidden="False" BindingField-SourceField="SII_CODICE"></ondp:wzTextBox></td>
                                            <td class="label">Codice AVN</td>
                                            <td>
                                                <ondp:wzTextBox id="txtAvn" runat="server" Width="100%" MaxLength="2" CssStyles-CssDisabled="textbox_stringa_disabilitato w100p"
										            CssStyles-CssEnabled="textbox_stringa w100p" CssStyles-CssRequired="textbox_stringa_obbligatorio w100p"
										            BindingField-Editable="always" BindingField-Connection="connessione" BindingField-SourceTable="T_ANA_SITI_INOCULAZIONE"
										            BindingField-Hidden="False" BindingField-SourceField="SII_CODICE_AVN"></ondp:wzTextBox></td>
										</tr>
										<tr>
											<td class="label">Descrizione</td>
											<td>
												<ondp:wzTextBox id="txtDescrizione" runat="server" onblur="toUpper(this);" maxlength="35"
                                                    CssStyles-CssEnabled="TextBox_Stringa w100p" CssStyles-CssRequired="TextBox_Stringa_Obbligatorio w100p" 
                                                    CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p" BindingField-Editable="always" BindingField-Connection="connessioneSec"
                                                    BindingField-SourceTable="T_ANA_SITI_INOCULAZIONE" BindingField-Hidden="False" BindingField-SourceField="SII_DESCRIZIONE" ></ondp:wzTextBox></td>                                   
											<td class="label">Codice Esterno</td>
											<td>
												<ondp:wzTextBox id="txtCodiceEsterno" runat="server" maxlength="10"
                                                    CssStyles-CssEnabled="TextBox_Stringa w100p" CssStyles-CssDisabled="TextBox_Stringa_Disabilitato w100p" 
                                                    BindingField-Editable="always" BindingField-Connection="connessioneSec" BindingField-SourceTable="T_ANA_SITI_INOCULAZIONE" 
                                                    BindingField-Hidden="False" BindingField-SourceField="SII_CODICE_ESTERNO"></ondp:wzTextBox></td>
										</tr>
									</table>
								</ondp:OnitDatapanel>
							</on_otb:onitcell>
						</on_otb:onitsection>
					</on_otb:onittable>
				</ondp:OnitDataPanel>
			</on_lay3:onitlayout3>
		</form>
	</body>
</html>                                                               
