set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/event-pattern
    REF "v0.1.0"
    SHA512 6cec09325848e9a0e821a1cfbb502fac7eb43bffe95fa2f64c74b44a1f543a442c3ea4cec1126673ff9ee1c744968c54364fe4b37dc5a08c18959f33e225f9bb
    HEAD_REF master)

file(
    GLOB HEADER_FILES "${SOURCE_PATH}/event/*.h")

file(
    INSTALL ${HEADER_FILES}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/event)
