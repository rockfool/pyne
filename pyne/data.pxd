"""Python wrapper for nucname library."""
# Python imports
#from collections import Iterable

# Cython imports
from libcpp.map cimport map
from libcpp.set cimport set as cpp_set
from cython.operator cimport dereference as deref
from cython.operator cimport preincrement as inc
#from cython cimport pointer

# local imports
include "include/cython_version.pxi"
IF CYTHON_VERSION_MAJOR == 0 and CYTHON_VERSION_MINOR >= 17:
    from libcpp.string cimport string as std_string
ELSE:
    from pyne._includes.libcpp.string cimport string as std_string
cimport extra_types
cimport pyne.cpp_pyne
cimport pyne.pyne_config
import pyne.pyne_config

cimport cpp_nucname
cimport pyne.stlcontainers as conv
import pyne.stlcontainers as conv
