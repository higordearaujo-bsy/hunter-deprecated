# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)


hunter_add_version(
  PACKAGE_NAME 
  VTK
  VERSION 
  "8.1.0"
  URL 
  "http://www.vtk.org/files/release/8.1/VTK-8.1.0.tar.gz"
  SHA1 
  3ae91aeff031c03962d463e3ed5172413a97eaa1
)

hunter_add_version(
  PACKAGE_NAME VTK
  VERSION 
  "8.2.0"
  URL 
  "https://www.vtk.org/files/release/8.2/VTK-8.2.0.tar.gz"
  SHA1
  8d529af73bd63a2657970842faea7d28b2ece799
)

# hunter_add_version(
#   PACKAGE_NAME VTK
#   VERSION "7.1.1"
#   URL "https://www.VTK.org/files/release/7.1/VTK-7.1.1.tar.gz"
#   SHA1 2827037cfec06c4119f02d72f5a184551fcf640d
# )
if(MSVC)
hunter_cmake_args(VTK CMAKE_ARGS
    BUILD_SHARED_LIBS=OFF
    BUILD_TESTS=OFF
    VTK_WRAP_PYTHON=OFF
    VTK_FORBID_DOWNLOADS=ON
    BUILD_DOCUMENTATION=OFF
    BUILD_EXAMPLES=OFF
)
else()
hunter_cmake_args(VTK CMAKE_ARGS
    CMAKE_CXX_STANDARD=14
    CMAKE_CXX_STANDARD_REQUIRED=OFF
    CMAKE_CXX_EXTENSIONS=OFF
    CMAKE_POSITION_INDEPENDENT_CODE=ON
    CMAKE_CXX_FLAGS=-fPIC
    CMAKE_C_FLAGS=-fPIC
    BUILD_TESTS=OFF
    BUILD_SHARED_LIBS=OFF
    VTK_WRAP_PYTHON=OFF
    VTK_FORBID_DOWNLOADS=ON
    BUILD_DOCUMENTATION=OFF
    BUILD_EXAMPLES=OFF
)
endif()


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(VTK)
hunter_download(PACKAGE_NAME VTK)

