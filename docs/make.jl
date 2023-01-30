using TeXPacker
using Documenter

DocMeta.setdocmeta!(TeXPacker, :DocTestSetup, :(using TeXPacker); recursive=true)

makedocs(;
    modules=[TeXPacker],
    authors="Kai Friebertshäuser",
    repo="https://github.com/kfrb/TeXPacker.jl/blob/{commit}{path}#{line}",
    sitename="TeXPacker.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kfrb.github.io/TeXPacker.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kfrb/TeXPacker.jl",
    devbranch="main",
)
