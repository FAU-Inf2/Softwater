add_library(SideData MODULE
    SideData.cpp
)
target_compile_features(SideData PRIVATE cxx_std_23)
# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(SideData PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
