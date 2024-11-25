-- let dotnet_errors_only = v:true
-- let dotnet_show_project_file = v:false
-- compiler dotnet

vim.g.dotnet_errors_only = true
vim.g.dotnet_show_project_file = true
vim.cmd("compiler dotnet")
