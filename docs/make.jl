using MyVSCodeWorkspace
using Documenter

DocMeta.setdocmeta!(MyVSCodeWorkspace, :DocTestSetup, :(using MyVSCodeWorkspace); recursive = true)

makedocs(;
    modules = [MyVSCodeWorkspace],
    authors = "Satoshi Terasaki <terasakisatoshi.math@gmail.com> and contributors",
    repo = "https://github.com/terasakisatoshi/MyVSCodeWorkspace.jl/blob/{commit}{path}#{line}",
    sitename = "MyVSCodeWorkspace.jl",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://terasakisatoshi.github.io/MyVSCodeWorkspace.jl",
        assets = String[]
    ),
    pages = [
        "Home" => "index.md",
    ]
)

deploydocs(;
    repo = "github.com/terasakisatoshi/MyVSCodeWorkspace.jl",
    devbranch = "main"
)
