#!/usr/bin/env bash
dotnet new classlib -lang c# -n AutoLot.Blazor.Models -o AutoLot.Blazor.Models -f net8.0 
dotnet sln AutoLot.sln add AutoLot.Blazor.Models
dotnet add AutoLot.Blazor.Models package Microsoft.VisualStudio.Threading.Analyzers -v [17.*,18.0)

dotnet new blazorwasm -lang c# -au none -n AutoLot.Blazor -o AutoLot.Blazor -f net8.0
dotnet sln AutoLot.sln add AutoLot.Blazor
dotnet add AutoLot.Blazor reference AutoLot.Blazor.Models

dotnet add AutoLot.Blazor package Microsoft.Extensions.Options.ConfigurationExtensions -v [8.0.*,9.0)
dotnet add AutoLot.Blazor package Microsoft.Extensions.Http -v [8.0.*,9.0)
dotnet add AutoLot.Blazor package Microsoft.AspNetCore.Components.WebAssembly -v [8.0.*,9.0)
dotnet add AutoLot.Blazor package Microsoft.AspNetCore.Components.WebAssembly.DevServer -v [8.0.*,9.0)
dotnet add AutoLot.Blazor package Microsoft.VisualStudio.Threading.Analyzers -v [17.*,18.0)

read -p "Press Enter to continue" </dev/ttyc
