vcpkg_check_linkage(
    ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/random
    REF "v0.1.0-testing"
    SHA512 0f0266163e92a3108d022055c211cba073bca3b2767faf63b2f96b5b8378ddfc0dec09f6b2babc4b1afcb9873807bf0b3d65f500af8cf76d2e2b0515fc11e1c0
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
