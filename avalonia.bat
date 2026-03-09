echo Welcome on Avalonia install batch

mkdir Iteration0

cd Iteration0

dotnet new sln -o Tetris

cd Tetris

dotnet new classlib -o NoyauTetris

dotnet sln add ./NoyauTetris/NoyauTetris.csproj

dotnet new xunit -o TestTetris

dotnet sln add ./TestTetris/TestTetris.csproj

cd TestTetris

dotnet add reference ../NoyauTetris/NoyauTetris.csproj

cd ..

dotnet new avalonia.app -o InterfaceTetris

dotnet sln add ./InterfaceTetris/InterfaceTetris.csproj

cd InterfaceTetris

dotnet new install Avalonia.Templates

cd ..

cd TestTetris

rename	UnitTest1.cs TestTetris.cs

cd ../NoyauTetris

rename Class1.cs NoyauTetris.cs

cd ../../..

copy MainWindow.axaml .\Iteration0\Tetris\InterfaceTetris\
copy MainWindow.axaml.cs .\Iteration0\Tetris\InterfaceTetris\
del MainWindow.axaml
del MainWindow.axaml.cs

cd Iteration0/Tetris/InterfaceTetris

dotnet build

dotnet run 