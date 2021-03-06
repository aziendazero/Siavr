namespace Onit.OnAssistnet.OnVac.Queries.AssociabilitaVaccinazioni
{
	/// <summary>
	/// Query oracle relative all'associabilitā dei vaccini.
	/// </summary>
	public static class OracleQueries
	{

        /// <summary>
        /// La query restituirā 1 se la coppia di vaccinazioni č presente nella tabella delle non associabilitā
        /// </summary>
		public static string chkVacAssociabili
		{
			get 
			{
				return @"select 1 
from t_ana_vac_non_associabili 
where vna_vac_codice = :cod_vac1 
and vna_vac_codice_non_associabile = :cod_vac2";
			}
		}

	}
}
