 
set DAAL4PY_VERSION=%PKG_VERSION%
set MPIROOT=%PREFIX%\Library

IF DEFINED DPCPPROOT (
    echo "Sourcing DPCPPROOT"
    call "%DPCPPROOT%\env\vars.bat"
    set "CC=dpcpp"
    set "CXX=dpcpp"
    dpcpp --version
)

IF DEFINED DAALROOT (
    echo "Sourcing DAALROOT"
    call "%DAALROOT%\env\vars.bat"
    echo "Finish sourcing DAALROOT"
)

IF DEFINED TBBROOT (
    echo "Sourcing TBBROOT"
    call "%TBBROOT%\env\vars.bat"
)