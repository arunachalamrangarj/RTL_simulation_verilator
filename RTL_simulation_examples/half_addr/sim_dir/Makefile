vlt: 
	verilator --Mdir vw_work_dir --prefix Vtop --binary -Wno-INITIALDLY -Wno-lint --top-module half_addr_tb --assert -f flist -I../src 2>&1 | tee comp.log
	./vw_work_dir/Vtop +verilator+error+limit+10 2>&1 | tee run.log


