add_library(WMBranchFunction SHARED llvm_pass/WMBranchFunctionAlt.cpp llvm_pass/WMBranchFunctionAlt.h)

target_link_libraries(WMBranchFunction "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
set_target_properties(WMBranchFunction PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
