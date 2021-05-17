cmake_minimum_required (VERSION 3.6)

add_subdirectory(cblib)
add_subdirectory(Pham)
add_subdirectory(enkiTS)


set(MY_THIRD_PARTY cblib Pham enkiTS)
install(TARGETS ${MY_THIRD_PARTY}
        ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}/${DILIGENT_TOOLS_DIR}/$<CONFIG>"
        LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}/${DILIGENT_TOOLS_DIR}/$<CONFIG>"
        RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}/${DILIGENT_TOOLS_DIR}/$<CONFIG>"
)

list(APPEND DILIGENT_TOOLS_INSTALL_LIBS_LIST ${MY_THIRD_PARTY})
set(DILIGENT_TOOLS_INSTALL_LIBS_LIST ${DILIGENT_TOOLS_INSTALL_LIBS_LIST} CACHE INTERNAL "Diligent tools libraries installation list")

set_target_properties(cblib PROPERTIES
    FOLDER third_party
)

set_target_properties(Pham PROPERTIES
    FOLDER third_party
)

set_target_properties(enkiTS PROPERTIES
    FOLDER third_party
)
