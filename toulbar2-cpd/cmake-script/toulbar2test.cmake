IF(LIBTB2)
  
    file(GLOB_RECURSE toulbar2test_file ${My_Source}/toulbar2test.cpp)
    INCLUDE_DIRECTORIES (${CMAKE_CURRENT_SOURCE_DIR}/${My_Source} )
    LINK_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/${LIBRARY_OUTPUT_PATH})
    add_executable(toulbar2test ${toulbar2test_file})
    TARGET_LINK_LIBRARIES(toulbar2test tb2)
    add_dependencies(toulbar2test tb2)
    install(TARGETS toulbar2test DESTINATION bin)

    set_property(
      TARGET toulbar2test
      PROPERTY COMPILE_DEFINITIONS NARYCHAR WCSPFORMATONLY ${COST} LINUX ${WIDE_STRING} ${PROBABILITY}
      )

ENDIF(LIBTB2)
