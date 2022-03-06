clean:
	-killall node
	rm -rvf .dockerignore
	rm -rvf Dockerfile
	rm -rvf frontend
	rm -rvf home
	rm -rvf manage.py
	rm -rvf project
	rm -rvf search
	rm -rvf requirements.txt

test-project-makefile: clean
	pip install project-makefile
	project-makefile .
	$(MAKE) django-init
