# - Try to find LogitechLCDLib
# Once done this will define
#  LOGITECHLCDLIB_FOUND - System has LogitechLCDLib
#  LOGITECHLCDLIB_INCLUDE_DIRS - The LogitechLCDLib include directory
#  LOGITECHLCDLIB_LIBRARIES - Link these to use LogitechLCDLib

find_path(LOGITECHLCDLIB_INCLUDE_DIR LogitechLCDLib.h)

find_library(LOGITECHLCDLIB_LIBRARY LogitechLCDLib.lib)

set(LOGITECHLCDLIB_LIBRARIES ${LOGITECHLCDLIB_LIBRARY})
set(LOGITECHLCDLIB_INCLUDE_DIRS ${LOGITECHLCDLIB_INCLUDE_DIR})

include(FindPackageHandleStandardArgs)
# Handle the QUIETLY and REQUIRED arguments and set LOGITECHLCDLIB_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(LOGITECHLCDLIB DEFAULT_MSG LOGITECHLCDLIB_LIBRARY LOGITECHLCDLIB_INCLUDE_DIR)

mark_as_advanced(CLEAR LOGITECHLCDLIB_LIBRARY LOGITECHLCDLIB_INCLUDE_DIR)
