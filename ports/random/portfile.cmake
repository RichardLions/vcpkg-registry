vcpkg_check_linkage(
    ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/random
    REF "v0.1.0-testing"
    SHA512 1099f1257531e5ddb8dbad12a2d8c66f5fdc8463106af87c0ec76cf62ee3c3a6afc7d82d1605501711ca5ae2e6cae4c3fa7221b14518ace2b3b06b5ee15c5e7c
    HEAD_REF master)

vcpkg_install_msbuild(
    SOURCE_PATH "${SOURCE_PATH}"
    PROJECT_SUBPATH "random.sln"
    USE_VCPKG_INTEGRATION)
    
vcpkg_copy_pdbs()

file(
    GLOB HEADER_FILES "${SOURCE_PATH}/random/*.h")

file(
    INSTALL ${HEADER_FILES}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/random)
