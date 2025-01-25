set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/event-pattern
    REF "v0.1.0"
    SHA512 0
    HEAD_REF master)

file(
    GLOB HEADER_FILES "${SOURCE_PATH}/event/*.h")

file(
    INSTALL ${HEADER_FILES}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/event)
