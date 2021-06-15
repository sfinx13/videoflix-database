help:
	@for i in 1 2 3 4 5 6 7 8 9 10; do echo "make request=$$i basic"; done

basic:
	@echo '=========================================================================================';
	@echo 'SQL:'
	@echo '=========================================================================================';
	@cat sql/basic-level/$(request).sql ; echo;
	@echo '=========================================================================================';
	@echo 'RESULTS:'
	@echo '=========================================================================================';
	@docker exec -i videoflix_db bash -c 'mysql -u root -ppassword videoflix_db' < sql/basic-level/$(request).sql