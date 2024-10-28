vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/random
    REF "v0.1.0-testing"
    SHA512 fa2c0c1c26124fe68f79565619bae6b2c6b5b11daa939a11a9e513fc38e1e5d817f30024dfd71cfb50fbdedcf1193f56ad2afd7ddc29299ac3ae335d9de53f54
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME "random")
