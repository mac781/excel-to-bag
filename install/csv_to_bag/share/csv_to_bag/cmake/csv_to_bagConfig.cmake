# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_csv_to_bag_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED csv_to_bag_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(csv_to_bag_FOUND FALSE)
  elseif(NOT csv_to_bag_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(csv_to_bag_FOUND FALSE)
  endif()
  return()
endif()
set(_csv_to_bag_CONFIG_INCLUDED TRUE)

# output package information
if(NOT csv_to_bag_FIND_QUIETLY)
  message(STATUS "Found csv_to_bag: 0.0.0 (${csv_to_bag_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'csv_to_bag' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${csv_to_bag_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(csv_to_bag_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${csv_to_bag_DIR}/${_extra}")
endforeach()
