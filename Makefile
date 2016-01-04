PYTHON_PATH=/usr/local/anaconda/bin/python


.PHONY:clean


cpu:
	$(PYTHON_PATH) setup.py cpu_build --inplace

gpu:
	$(PYTHON_PATH) setup.py gpu_build --inplace


clean:
	$(PYTHON_PATH) setup.py clean --all
	find . -name "*.pyc" -exec rm {} \;
	rm -f bbox_utils/*.so
	rm -f *~
	rm -rf build

