for /f "tokens=*" %%i in ('dir /b files\*.dds') do (
	for /f "tokens=*" %%j in (copylists\%%i.txt) do (
		if not exist %%j (xcopy /y /F "files\%%i" "%%j*")
	)
)
