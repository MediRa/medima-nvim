vim.filetype.add({
    filename = {
        ["compose.yaml"] = "yaml",
        ["compose.yml"] = "yaml",
        ["docker-compose.yaml"] = "yaml",
        ["docker-compose.yml"] = "yaml",
    },
    pattern = {
        -- [".*%.blade%.php"] = "blade",
        [".*%.blade%.php"] = "php",
    },
    extension = {
        blade = "blade",
    },
})
