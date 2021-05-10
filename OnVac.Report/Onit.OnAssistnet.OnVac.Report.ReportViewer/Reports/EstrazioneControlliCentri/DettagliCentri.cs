﻿using System;

namespace Onit.OnAssistnet.OnVac.Report.ReportViewer.Reports.EstrazioneControlliCentri
{
    [Serializable]
    public class DettagliCentri
    {
        public string Cognome { get; set; }
        public string Nome { get; set; }
        public DateTime? DataNascita { get; set; }
        public string Sesso { get; set; }
        public string CodiceFiscale { get; set; }
        public string Scuola_Comune { get; set; }
        public string Scuola_Nome { get; set; }
        public string Scuola_Indirizzo { get; set; }
        public string Esito { get; set; }
        public string Errore { get; set; }
        public string Vaccinazione { get; set; }
        public int? Dose { get; set; }
        public string TipoOperazione { get; set; }
        public string Data { get; set; }
        public string Informazioni { get; set; }
        public string Note { get; set; }
        public string CodiceMeccanografico { get; set; }
        public string CodiceFiscaleScuola { get; set; }
        public string DescrizioneScuola { get; set; }
        public string ComuneNascita { get; set; }
    }
}
