add_sub_inst : add_sub PORT MAP (
		add_sub	 => add_sub_sig,
		clock	 => clock_sig,
		dataa	 => dataa_sig,
		datab	 => datab_sig,
		overflow	 => overflow_sig,
		result	 => result_sig,
		underflow	 => underflow_sig
	);
