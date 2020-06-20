path "%EMSCRIPTEN%";"%PYTHONPATH%"
call emcc.bat -o lutf8lib.bc -DEMSCRIPTEN -O2 -I../shared ../shared/lutf8lib.c
call emar r utf8.a lutf8lib.bc
del *.bc



