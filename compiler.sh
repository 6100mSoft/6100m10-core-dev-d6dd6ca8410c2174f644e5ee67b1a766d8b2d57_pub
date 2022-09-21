# Cygwin/mingw tasks go here

# Make Build Directory
mkdir build

# Make build directory for ISO injections
mkdir build\sources\


# Make directory for registry
# injections within the ISO injections
# folder
mkdir build\sources\$RegTweaks$


# Copy reg files to the folder
# for registry injections within
# the ISO injections folder
cp -r reg/* build\sources\$RegTweaks$\