from setuptools import Extension, setup
from Cython.Build import cythonize

setup(
    name="Homo_v4 Encoder",
    ext_modules=cythonize(["motionseg/*.py","homo_v4/*.py"], language_level = "3")
)