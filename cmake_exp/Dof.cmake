include(CMakeParseArguments)

macro (CHECK_VAR var)
  # Docker registry
  message(STATUS "1---" ${var})
  if(NOT _Dockerfile_Generate_${var})
    message(STATUS "2---" ${var})
    if(DEFINED ENV{${var}})
      message(STATUS "3---" ${var})
      set(${var} $ENV{${var}})
    endif()
  endif()
  if(NOT ${var})
    message(WARNING "${var} variable is not set!")
  endif()
endmacro()

function(Dockerfile_Generate)

  set(options )
  set(oneValueArgs
    OUTPUT_FILE
    DESTINATION
    DOCKER_REGISTRY
    DOCKER_REPOSITORY
    PYPI_HOST
    PYPI_URL
    )
  set(multiValueArgs
    COPY_PATHS
    CONFIGURE_PATHS
  )

  cmake_parse_arguments(_Dockerfile_Generate
    "${options}"
    "${oneValueArgs}"
    "${multiValueArgs}"
    ${ARGN}
    )

  if(NOT _Dockerfile_Generate_UNPARSED_ARGUMENTS)
    set(_Dockerfile_Generate_UNPARSED_ARGUMENTS "Dockerfile.in")
  endif()

  if(NOT _Dockerfile_Generate_OUTPUT_FILE)
    set(_Dockerfile_Generate_OUTPUT_FILE "Dockerfile")
  endif()

  if(NOT _Dockerfile_Generate_DESTINATION)
    set(_Dockerfile_Generate_DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")
  endif()

  # Docker registry
    CHECK_VAR(DOCKER_REGISTRY)
    CHECK_VAR(DOCKER_REPOSITORY)
    message(STATUS ${DOCKER_REGISTRY})
  if(NOT _Dockerfile_Generate_DOCKER_REPOSITORY)
    if(DEFINED ENV{DOCKER_REPOSITORY})
      set(DOCKER_REPOSITORY $ENV{DOCKER_REPOSITORY})
    endif()
  endif()
  if(NOT DOCKER_REPOSITORY)
    message(WARNING "DOCKER_REPOSITORY variable is not set!")
  endif()

  # Python repository and pip tool
  if(NOT _Dockerfile_Generate_PYPI_HOST)
    if(DEFINED ENV{PYPI_HOST})
      set(PYPI_HOST $ENV{PYPI_HOST})
    endif()
  endif()
  if(NOT PYPI_HOST)
    message(WARNING "PYPI_HOST variable is not set!")
  endif()

  if(NOT _Dockerfile_Generate_PYPI_URL)
    if(DEFINED ENV{PYPI_URL})
      set(PYPI_URL $ENV{PYPI_URL})
    endif()
  endif()
  if(NOT PYPI_URL)
    message(WARNING "PYPI_URL variable is not set!")
  endif()

  set(PYPI_CANDIDATE "https://${PYPI_HOST}/artifactory/api/pypi/mncc-ntas-pypi-candidate-local/simple")
  set(PYPI_INPROGRESS "https://${PYPI_HOST}/artifactory/api/pypi/mncc-ntas-pypi-inprogress-local/simple")
  set(PYPI_FOSS "https://${PYPI_HOST}/artifactory/api/pypi/mncc-ntas-foss-pypi-local/simple")
  set(PIP_INSTALL_LIST
    "pip install --no-deps"
    "--extra-index-url ${PYPI_URL}"
    "--extra-index-url ${PYPI_CANDIDATE}"
    "--extra-index-url ${PYPI_INPROGRESS}"
    "--extra-index-url ${PYPI_FOSS}"
    "--trusted-host ${PYPI_HOST}"
  )
  string(REPLACE ";" " " PIP_INSTALL "${PIP_INSTALL_LIST}")
  set(PIP_INSTALL_PYTHON_DOT_ORG "pip install -i https://pypi.python.org/simple")

  configure_file(
    "${_Dockerfile_Generate_UNPARSED_ARGUMENTS}"
    "${_Dockerfile_Generate_OUTPUT_FILE}"
    @ONLY
    )

  file(
    COPY ${_Dockerfile_Generate_COPY_PATHS}
    DESTINATION "${_Dockerfile_Generate_DESTINATION}"
    )

  foreach(configure_path ${_Dockerfile_Generate_CONFIGURE_PATHS})

    file(
      GLOB_RECURSE configure_files
      RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}/${configure_path}"
      "${configure_path}/*"
      )

    foreach(configure_file ${configure_files})
      configure_file(
	"${configure_path}/${configure_file}"
	"${_Dockerfile_Generate_DESTINATION}/${configure_path}/${configure_file}"
	@ONLY
	)
    endforeach()

  endforeach()

endfunction()

