﻿'------------------------------------------------------------------------------
' <generato automaticamente>
'     Codice generato da uno strumento.
'
'     Le modifiche a questo file possono causare un comportamento non corretto e verranno perse se
'     il codice viene rigenerato. 
' </generato automaticamente>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Partial Public Class ElencoBilanciMalattia
    
    '''<summary>
    '''Controllo Form1.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents Form1 As Global.System.Web.UI.HtmlControls.HtmlForm
    
    '''<summary>
    '''Controllo OnitLayout31.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents OnitLayout31 As Global.Onit.Controls.PagesLayout.OnitLayout3
    
    '''<summary>
    '''Controllo PanelTitolo.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents PanelTitolo As Global.System.Web.UI.HtmlControls.HtmlGenericControl
    
    '''<summary>
    '''Controllo LayoutTitolo.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents LayoutTitolo As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo Toolbar.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents Toolbar As Global.Infragistics.WebUI.UltraWebToolbar.UltraWebToolbar
    
    '''<summary>
    '''Controllo Panel23.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents Panel23 As Global.System.Web.UI.HtmlControls.HtmlGenericControl
    
    '''<summary>
    '''Controllo LayoutTitolo_sezioneRicerca.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents LayoutTitolo_sezioneRicerca As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo txtMalattia.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents txtMalattia As Global.Onit.Controls.OnitModalList
    
    '''<summary>
    '''Controllo txtNumero.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents txtNumero As Global.Onit.Web.UI.WebControls.Validators.OnitJsValidator
    
    '''<summary>
    '''Controllo dypScroll.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents dypScroll As Global.Onit.Web.UI.WebControls.DynamicPanel.DynamicPanel
    
    '''<summary>
    '''Controllo fmComuneRes.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents fmComuneRes As Global.Onit.Controls.OnitModalList
    
    '''<summary>
    '''Controllo fmConsultorio.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents fmConsultorio As Global.Onit.Controls.OnitModalList
    
    '''<summary>
    '''Controllo lblDataEffettuazioneIniz.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents lblDataEffettuazioneIniz As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo odpDataEffettuazioneIniz.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents odpDataEffettuazioneIniz As Global.Onit.Web.UI.WebControls.Validators.OnitDatePick
    
    '''<summary>
    '''Controllo lblDataEffettuazioneFin.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents lblDataEffettuazioneFin As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo odpDataEffettuazioneFin.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents odpDataEffettuazioneFin As Global.Onit.Web.UI.WebControls.Validators.OnitDatePick
    
    '''<summary>
    '''Controllo lblDataNascitaIniz.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents lblDataNascitaIniz As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo odpDataNascitaIniz.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents odpDataNascitaIniz As Global.Onit.Web.UI.WebControls.Validators.OnitDatePick
    
    '''<summary>
    '''Controllo lblDataNascitaFin.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents lblDataNascitaFin As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo odpDataNascitaFin.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents odpDataNascitaFin As Global.Onit.Web.UI.WebControls.Validators.OnitDatePick
    
    '''<summary>
    '''Controllo dypMsg.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents dypMsg As Global.Onit.Web.UI.WebControls.DynamicPanel.DynamicPanel
    
    '''<summary>
    '''Controllo Label1.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents Label1 As Global.System.Web.UI.WebControls.Label
    
    '''<summary>
    '''Controllo modRicBil.
    '''</summary>
    '''<remarks>
    '''Campo generato automaticamente.
    '''Per la modifica, spostare la dichiarazione di campo dal file di progettazione al file code-behind.
    '''</remarks>
    Protected WithEvents modRicBil As Global.Onit.Controls.OnitFinestraModale
End Class
