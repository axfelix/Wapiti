[![Build status](https://ci.appveyor.com/api/projects/status/ry6ki3d31qneg5po?svg=true)](https://ci.appveyor.com/project/boumenot/wapiti)

# Wapiti

This is a fork of [Wapiti][wapiti].  Please see the [original
site][wapiti] for the definitive source.

This version has been modified to support:

 * Windows (x64).
 * Streaming IO interface for loading data in leiu of reading files
    off disk.
 * Intentional support for C# via P/Invoke.

This fork builds upon and makes use of other forks.  These forks
provide the following features.

 * CMake, cross-platform build system, instead of Make, allowing to
   build the library more easily in the environment of your choice.
 * Remove most uses of VLA (i.e. `main(int argc, char*[argc]
   argv)`. Instead, `main(int argc, char** argv)` is used).

When building with CMake on Windows, make sure to specify both the host and the CMake generator platform are 64-bit like so or the CUDA paths will break:

`cmake -DCMAKE_GENERATOR_PLATFORM=x64 -T host=x64 -DCMAKE_CUDA_FLAGS="-arch=sm_61" .`

## Branches

There are two other branches in this repository worthy of note.

 1. [grobid-java-swig-win32](https://github.com/boumenot/wapiti/tree/grobid-java-swig-win32)
 1. [grobid-iolines-swig-win32](https://github.com/boumenot/wapiti/tree/grobid-iolines-swig-win32)

The branch grobid-java-swig-win32 is for the Wapiti version used by
[Grobid][grobid].  This is a Windows build of Wapiti with SWIG binding
for Java.

The branch grobid-iolines-swig-win32 is an experimental version of
Wapiti with a streaming IO interface with SWIG bindings for Java.

[wapiti]: https://github.com/Jekub/Wapiti
[grobid]: https://github.com/kermitt2/grobid
