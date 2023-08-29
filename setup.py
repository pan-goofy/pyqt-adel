from cx_Freeze import setup, Executable
path_platforms = ( "D:\project\pyqt\config.ini" )#pyqt5大包围windows软件的dll文件
includefiles = [path_platforms]

build_exe_options = {"packages": ["os"],
                     "excludes": ["tkinter"],
                     "include_files": includefiles,}
setup(
    name="cardAdel",
    version="1.0",
    description="adel发卡器接口",
    executables=[Executable("main.py", base="Win32GUI",icon='icon.ico')]

)