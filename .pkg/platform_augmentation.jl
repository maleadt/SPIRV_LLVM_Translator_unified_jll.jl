using Base.BinaryPlatforms
function augment_platform!(platform)
    llvm_version = Base.libllvm_version.major

    # does our LLVM build use assertions?
    llvm_assertions = try
        cglobal((:_ZN4llvm24DisableABIBreakingChecksE, Base.libllvm_path()), Cvoid)
        false
    catch
        true
    end

    platform["llvm"] = if llvm_assertions
        "$(llvm_version.major).asserts"
    else
        "$(llvm_version.major)"
    end

    return platform
end

