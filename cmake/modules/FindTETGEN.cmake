INCLUDE(FindPackageHandleStandardArgs)
INCLUDE(PackageManagerPaths)

FIND_PATH(TETGEN_INCLUDES NAMES tetgen.h 
                          PATHS ${PACKMAN_INCLUDE_PATHS})

FIND_LIBRARY(TETGEN_LIBRARIES NAMES tet 
                              PATHS ${PACKMAN_LIBRARIES_PATHS})

IF(TETGEN_INCLUDES AND TETGEN_LIBRARIES)
  SET(TETGEN_FOUND True)
  MESSAGE(STATUS "A library with TETGEN API found.")
ENDIF(TETGEN_INCLUDES AND TETGEN_LIBRARIES)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(TETGEN DEFAULT_MSG TETGEN_INCLUDES TETGEN_LIBRARIES)


