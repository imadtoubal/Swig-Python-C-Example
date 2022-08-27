#!/usr/bin/env python

"""
setup.py file for SWIG example
"""

from distutils.core import Extension, setup

example_module = Extension('_example',
                           sources=['example_wrap.c', 'src/example.c'],
                           )

setup (name = 'example',
       version = '0.1',
       author      = "SWIG Docs",
       description = """Simple swig example from docs""",
       ext_modules = [example_module],
       py_modules = ["example"],
       )
