using Base.BinaryPlatforms
function augment_platform!(platform)
    platform["llvm"] = "$(Base.libllvm_version.major)"
    return platform
end

