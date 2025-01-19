set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/state-pattern
    REF "v0.1.0"
    SHA512 93ce1b743092923fa70f400957ebaca83d2dea008add2c70f443b1175dd0f88339577aed5e520b05652ac9fc8f894ea0a4e8a3a455670f773b66c00694dc7df4
    HEAD_REF master)

file(
    GLOB HEADER_FILES "${SOURCE_PATH}/finitestatemachine.h")

file(
    INSTALL ${HEADER_FILES}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/fsm)
