# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SPIRV_LLVM_Translator_unified_jll
using Base
using Base: UUID
include(path) = Base.include(@__MODULE__, path)
include(joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("SPIRV_LLVM_Translator_unified")
JLLWrappers.@generate_main_file("SPIRV_LLVM_Translator_unified", UUID("85f0d8ed-5b39-5caa-b1ae-7472de402361"))
end  # module SPIRV_LLVM_Translator_unified_jll
