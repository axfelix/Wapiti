pushd ..\..\build
ninja
popd

"%JAVA_HOME%\bin\javac.exe" -source 1.7 -target 1.7 fr\limsi\wapiti\*.java
"%JAVA_HOME%\bin\jar.exe" cfv wapiti-1.5.0.jar fr\limsi\wapiti\*.class
