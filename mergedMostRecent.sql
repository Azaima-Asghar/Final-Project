CREATE TABLE mergedMostRecent AS (
	SELECT acq.loan_identifier, origination_channel, seller_name, original_interest_rate, original_upb, original_loan_term, origination_date, first_payment_date, acq.original_loantovalue_ltv AS original_ltv, acq.original_combined_loantovalue_cltv AS original_cltv, number_of_borrowers, acq.original_debt_to_income_ratio AS original_dir, borrower_credit_score_at_origination, first_time_home_buyer_indicator, loan_purpose, property_type, number_of_units, occupancy_type, property_state, zip_code_short, primary_mortgage_insurance_percent, product_type, relocation_mortgage_indicator, monthly_reporting_period, current_interest_rate, loan_age, remaining_months_to_legal_maturity, adj_remaining_months_to_maturity, maturity_date, msa, perfmr.current_loan_deliquency_status AS current_loan_delinquency_status, modification_flag, delinquency
	FROM acquisition AS acq
	LEFT JOIN performancemostrecent AS perfmr ON acq.loan_identifier = perfmr.loan_identifier
);