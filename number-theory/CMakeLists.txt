# Our passes live here:
# add_subdirectory(snippets/Skeleton)
# add_subdirectory(snippets/Emit)
# add_subdirectory(Watermark/Transforms/ForLoopAnalysis)
# add_subdirectory(Watermark/Transforms/LoopTransformation)
add_library(NumberTheory MODULE
    Watermark/Transforms/WatermarkEmbedderPass/WatermarkEmbedderPass.cpp)

target_compile_features(NumberTheory PRIVATE cxx_std_23)
set_target_properties(NumberTheory PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
