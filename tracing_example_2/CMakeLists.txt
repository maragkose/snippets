cmake_minimum_required(VERSION 3.10)
project(ctrace)

set(BINUTILS_TARGET "-DTARGET=\"x86_64-pc-linux-gnu\"")
set(BINUTILS_SOURCE "${CMAKE_SOURCE_DIR}/../binutils-2.18")

# Common flags
set(COMMON_FLAGS "-g -Wall -save-temps")

# Binutils flags
set(BINUTILS_CFLAGS "${BINUTILS_TARGET} -I${BINUTILS_SOURCE}/bfd -I${BINUTILS_SOURCE}/include -I${BINUTILS_SOURCE}/binutils")
set(BINUTILS_LDFLAGS "-L${BINUTILS_SOURCE}/bfd -L${BINUTILS_SOURCE}/libiberty -lbfd -liberty")

# CTraced
set(CTRACED_HEADERS)
set(CTRACED_FILES ctraced.c)
set(CTRACED_OBJ)
foreach(SRC_FILE ${CTRACED_FILES})
    get_filename_component(BASE_NAME ${SRC_FILE} NAME_WE)
    list(APPEND CTRACED_OBJ ${BASE_NAME}.o)
endforeach()

set(CTRACED_CFLAGS "${COMMON_FLAGS} -rdynamic -finstrument-functions -pthread ${BINUTILS_CFLAGS}")
set(CTRACED_LDFLAGS "-rdynamic -L. -lpthread")

add_executable(ctraced ${CTRACED_OBJ})
set_target_properties(ctraced PROPERTIES LINKER_LANGUAGE C)

target_compile_options(ctraced PRIVATE ${CTRACED_CFLAGS})
target_link_libraries(ctraced PRIVATE ${CTRACED_LDFLAGS})

# CPPTraced
set(CPPTRACED_HEADERS)
set(CPPTRACED_FILES cpptraced.cpp)
set(CPPTRACED_OBJ)
foreach(SRC_FILE ${CPPTRACED_FILES})
    get_filename_component(BASE_NAME ${SRC_FILE} NAME_WE)
    list(APPEND CPPTRACED_OBJ ${BASE_NAME}.o)
endforeach()

set(CPPTRACED_CFLAGS "${COMMON_FLAGS} -rdynamic -finstrument-functions -pthread ${BINUTILS_CFLAGS}")
set(CPPTRACED_LDFLAGS "-rdynamic -L. -lpthread")
add_executable(cpptraced ${CPPTRACED_OBJ})
set_target_properties(cpptraced PROPERTIES LINKER_LANGUAGE CXX)
target_compile_options(cpptraced PRIVATE ${CPPTRACED_CFLAGS})
target_link_libraries(cpptraced PRIVATE ${CPPTRACED_LDFLAGS})
# Similarly, update for other targets...

# Add your test targets here

# Clean target
add_custom_target(clean-all
    COMMAND rm -rf ctraced cpptraced libctrace.so addr2line *.o core*
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Clean all generated files"
)

# Test targets
add_custom_target(testc
    COMMAND ./ctrace.sh ./ctraced
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    DEPENDS ctraced
)

add_custom_target(testcpp
    COMMAND ./ctrace.sh ./cpptraced
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    DEPENDS cpptraced
)

# Backup target
add_custom_target(backup
    COMMAND cd .. && cp -pR ctrace /media/disk/
    COMMAND sync
    COMMAND ls -l /media/disk/ctrace/*
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Backup to /media/disk/ctrace/"
)

# Refresh target
add_custom_target(refresh
    COMMAND cp -pR /media/disk/ctrace/* .
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Refresh from /media/disk/ctrace/"
)

