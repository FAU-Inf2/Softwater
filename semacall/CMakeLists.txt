add_library(SemaCall MODULE
    SemaCall.cpp
)
target_compile_features(SemaCall PRIVATE cxx_std_23)
# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(SemaCall PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
