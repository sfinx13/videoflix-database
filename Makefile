help: help-basic help-normal

help-basic:
	@echo '==========================';
	@echo 'Execute basic request :'
	@echo '==========================';
	@for i in 1 2 3 4 5 6 7 8 9 10; do echo "make basic sql=$$i"; done

help-normal:
	@echo '==========================';
	@echo 'Execute normal request:'
	@echo '==========================';
	@for i in 1 2 3 4 .. .. 31; do echo "make normal sql=$$i"; done

basic:
	@echo '=========================================================================================';
	@echo 'SQL:'
	@echo '=========================================================================================';
	@cat sql/basic-level/$(sql).sql ; echo;
	@echo '=========================================================================================';
	@echo 'RESULTS:'
	@echo '=========================================================================================';
	@docker exec -i videoflix_db bash -c 'mysql -u root -ppassword videoflix_db' < sql/basic-level/$(sql).sql

normal:
	@echo '=========================================================================================';
	@echo 'SQL:'
	@echo '=========================================================================================';
	@cat sql/normal-level/$(sql).sql ; echo;
	@echo '=========================================================================================';
	@echo 'RESULTS:'
	@echo '=========================================================================================';
	@docker exec -i videoflix_db bash -c 'mysql -u root -ppassword videoflix_db' < sql/normal-level/$(sql).sql

mysql:
	@docker exec -it videoflix_db bash -c 'mysql -u root -ppassword videoflix_db'