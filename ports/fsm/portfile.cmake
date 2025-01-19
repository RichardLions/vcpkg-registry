set(VCPKG_POLICY_SKIP_COPYRIGHT_CHECK enabled)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO RichardLions/state-pattern
    REF "v0.1.0"
    SHA512 b2af2ace0ff3574aa6332ef039948239ba1dbefdc4f35b9ff68d5f999e95aadd3f6eb41abe382971ba30be9c76d645bbe4135d775c6179ed0723d595ef25c505
    HEAD_REF master)

file(
    GLOB HEADER_FILES "${SOURCE_PATH}/finitestatemachine.h")

file(
    INSTALL ${HEADER_FILES}
    DESTINATION ${CURRENT_PACKAGES_DIR}/include/fsm)
