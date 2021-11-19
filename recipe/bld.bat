REM Based on bld.bat from pysyntect-feedstock
REM https://github.com/conda-forge/pysyntect-feedstock/

REM Create temp folder
mkdir tmpbuild_%PY_VER%
set TEMP=%CD%\tmpbuild_%PY_VER%

REM Print Rust version
rustc --version

REM set UTF-8 mode by default
chcp 65001
set PYTHONUTF8=1
set PYTHONIOENCODING="UTF-8"
%PYTHON% -m pip install . --no-deps --ignore-installed -vv