obj = example_wrap.cxx _example.so

.PHONY: all
all : $(obj)

clean:
	rm -f *.o
	rm -f *.so
	rm -f *wrap*.c*
	rm -Rf build

example_wrap.cxx : example.i
	swig -python -c++ example.i

_example.so: example.i
	python setup.py build_ext --inplace

test:
	python -c "from _example import hw1; print(f'Sin of 1 + 2 is {hw1(1, 2)}')"
