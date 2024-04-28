import os
PLATFORM = Platform()
DEBUG = ARGUMENTS.get("debug", 0)

CUDA_PATH = os.environ['CUDA_PATH']
CUDA_INCLUDE_PATH = CUDA_PATH + "/include"
OPTIX_PATH = os.environ['OPTIX_PATH']
OPTIX_INCLUDE_PATH = OPTIX_PATH + "/include"

ENV = Environment(CPPPATH = ['.', OPTIX_INCLUDE_PATH, "/usr/include", CUDA_INCLUDE_PATH], CCFLAGS="-std=c++11")

# Used for debbugging
if int(DEBUG):
    ENV.Append(CCFLAGS=' -ggdb3')

SOURCES = Glob("src/*.cpp")

LIBPATH = []
LIBPATH.append(CUDA_PATH +"/lib64")

LIBS = []
#LIBS.append("optix")
LIBS.append("cudart")
LIBS.append("OpenImageIO")

LINKFLAGS = []
LINKFLAGS.append("-Wl,-rpath=.")

program = ENV.Program(target="bin/Denoiser", source=SOURCES,
                      LIBPATH=LIBPATH,
                      LIBS=LIBS, LINKFLAGS=LINKFLAGS)