# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Qt\Tools\CMake_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Qt\Tools\CMake_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\blue\Desktop\Develop\OpenCV

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\blue\Desktop\Develop\OpenCV

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	C:\Qt\Tools\CMake_64\bin\cmake-gui.exe -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	C:\Qt\Tools\CMake_64\bin\cmake.exe --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start C:\Users\blue\Desktop\Develop\OpenCV\CMakeFiles C:\Users\blue\Desktop\Develop\OpenCV\\CMakeFiles\progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start C:\Users\blue\Desktop\Develop\OpenCV\CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named openCV

# Build rule for target.
openCV: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 openCV
.PHONY : openCV

# fast build rule for target.
openCV/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/build
.PHONY : openCV/fast

brightness.obj: brightness.cpp.obj
.PHONY : brightness.obj

# target to build an object file
brightness.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/brightness.cpp.obj
.PHONY : brightness.cpp.obj

brightness.i: brightness.cpp.i
.PHONY : brightness.i

# target to preprocess a source file
brightness.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/brightness.cpp.i
.PHONY : brightness.cpp.i

brightness.s: brightness.cpp.s
.PHONY : brightness.s

# target to generate assembly for a file
brightness.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/brightness.cpp.s
.PHONY : brightness.cpp.s

classify.obj: classify.cpp.obj
.PHONY : classify.obj

# target to build an object file
classify.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/classify.cpp.obj
.PHONY : classify.cpp.obj

classify.i: classify.cpp.i
.PHONY : classify.i

# target to preprocess a source file
classify.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/classify.cpp.i
.PHONY : classify.cpp.i

classify.s: classify.cpp.s
.PHONY : classify.s

# target to generate assembly for a file
classify.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/classify.cpp.s
.PHONY : classify.cpp.s

edge.obj: edge.cpp.obj
.PHONY : edge.obj

# target to build an object file
edge.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/edge.cpp.obj
.PHONY : edge.cpp.obj

edge.i: edge.cpp.i
.PHONY : edge.i

# target to preprocess a source file
edge.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/edge.cpp.i
.PHONY : edge.cpp.i

edge.s: edge.cpp.s
.PHONY : edge.s

# target to generate assembly for a file
edge.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/edge.cpp.s
.PHONY : edge.cpp.s

geometry.obj: geometry.cpp.obj
.PHONY : geometry.obj

# target to build an object file
geometry.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/geometry.cpp.obj
.PHONY : geometry.cpp.obj

geometry.i: geometry.cpp.i
.PHONY : geometry.i

# target to preprocess a source file
geometry.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/geometry.cpp.i
.PHONY : geometry.cpp.i

geometry.s: geometry.cpp.s
.PHONY : geometry.s

# target to generate assembly for a file
geometry.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/geometry.cpp.s
.PHONY : geometry.cpp.s

main.obj: main.cpp.obj
.PHONY : main.obj

# target to build an object file
main.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/main.cpp.obj
.PHONY : main.cpp.obj

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/main.cpp.s
.PHONY : main.cpp.s

mask.obj: mask.cpp.obj
.PHONY : mask.obj

# target to build an object file
mask.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/mask.cpp.obj
.PHONY : mask.cpp.obj

mask.i: mask.cpp.i
.PHONY : mask.i

# target to preprocess a source file
mask.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/mask.cpp.i
.PHONY : mask.cpp.i

mask.s: mask.cpp.s
.PHONY : mask.s

# target to generate assembly for a file
mask.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/mask.cpp.s
.PHONY : mask.cpp.s

practice.obj: practice.cpp.obj
.PHONY : practice.obj

# target to build an object file
practice.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/practice.cpp.obj
.PHONY : practice.cpp.obj

practice.i: practice.cpp.i
.PHONY : practice.i

# target to preprocess a source file
practice.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/practice.cpp.i
.PHONY : practice.cpp.i

practice.s: practice.cpp.s
.PHONY : practice.s

# target to generate assembly for a file
practice.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/practice.cpp.s
.PHONY : practice.cpp.s

project1.obj: project1.cpp.obj
.PHONY : project1.obj

# target to build an object file
project1.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project1.cpp.obj
.PHONY : project1.cpp.obj

project1.i: project1.cpp.i
.PHONY : project1.i

# target to preprocess a source file
project1.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project1.cpp.i
.PHONY : project1.cpp.i

project1.s: project1.cpp.s
.PHONY : project1.s

# target to generate assembly for a file
project1.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project1.cpp.s
.PHONY : project1.cpp.s

project2.obj: project2.cpp.obj
.PHONY : project2.obj

# target to build an object file
project2.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project2.cpp.obj
.PHONY : project2.cpp.obj

project2.i: project2.cpp.i
.PHONY : project2.i

# target to preprocess a source file
project2.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project2.cpp.i
.PHONY : project2.cpp.i

project2.s: project2.cpp.s
.PHONY : project2.s

# target to generate assembly for a file
project2.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/project2.cpp.s
.PHONY : project2.cpp.s

storage.obj: storage.cpp.obj
.PHONY : storage.obj

# target to build an object file
storage.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/storage.cpp.obj
.PHONY : storage.cpp.obj

storage.i: storage.cpp.i
.PHONY : storage.i

# target to preprocess a source file
storage.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/storage.cpp.i
.PHONY : storage.cpp.i

storage.s: storage.cpp.s
.PHONY : storage.s

# target to generate assembly for a file
storage.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/storage.cpp.s
.PHONY : storage.cpp.s

video.obj: video.cpp.obj
.PHONY : video.obj

# target to build an object file
video.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video.cpp.obj
.PHONY : video.cpp.obj

video.i: video.cpp.i
.PHONY : video.i

# target to preprocess a source file
video.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video.cpp.i
.PHONY : video.cpp.i

video.s: video.cpp.s
.PHONY : video.s

# target to generate assembly for a file
video.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video.cpp.s
.PHONY : video.cpp.s

video_ex.obj: video_ex.cpp.obj
.PHONY : video_ex.obj

# target to build an object file
video_ex.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video_ex.cpp.obj
.PHONY : video_ex.cpp.obj

video_ex.i: video_ex.cpp.i
.PHONY : video_ex.i

# target to preprocess a source file
video_ex.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video_ex.cpp.i
.PHONY : video_ex.cpp.i

video_ex.s: video_ex.cpp.s
.PHONY : video_ex.s

# target to generate assembly for a file
video_ex.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\openCV.dir\build.make CMakeFiles/openCV.dir/video_ex.cpp.s
.PHONY : video_ex.cpp.s

# Help Target
help:
	@echo The following are some of the valid targets for this Makefile:
	@echo ... all (the default if no target is provided)
	@echo ... clean
	@echo ... depend
	@echo ... edit_cache
	@echo ... rebuild_cache
	@echo ... openCV
	@echo ... brightness.obj
	@echo ... brightness.i
	@echo ... brightness.s
	@echo ... classify.obj
	@echo ... classify.i
	@echo ... classify.s
	@echo ... edge.obj
	@echo ... edge.i
	@echo ... edge.s
	@echo ... geometry.obj
	@echo ... geometry.i
	@echo ... geometry.s
	@echo ... main.obj
	@echo ... main.i
	@echo ... main.s
	@echo ... mask.obj
	@echo ... mask.i
	@echo ... mask.s
	@echo ... practice.obj
	@echo ... practice.i
	@echo ... practice.s
	@echo ... project1.obj
	@echo ... project1.i
	@echo ... project1.s
	@echo ... project2.obj
	@echo ... project2.i
	@echo ... project2.s
	@echo ... storage.obj
	@echo ... storage.i
	@echo ... storage.s
	@echo ... video.obj
	@echo ... video.i
	@echo ... video.s
	@echo ... video_ex.obj
	@echo ... video_ex.i
	@echo ... video_ex.s
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 0
.PHONY : cmake_check_build_system

