return {
    'echasnovski/mini.nvim', version = '*',

    config = function()
        require( "mini.ai" ).setup(
            -- a: around
            -- p : paragraph
            -- w : word
            -- i : inside
            -- v :visual /block

            -- operator 
            -- c: change
            -- d: delete
            -- y: yank
            -- p: put

            -- key:"vap", meaning:"visual around paragraph", dec: "block inside paragraph"
            -- key:"vaw", meaning:"visual around word", dec: "block around word"
            -- key:"viw", meaning:"visual inside word", dec: "block around word"
        )
        require( "mini.surround" ).setup(
            -- add
            -- sa: s -> surround a -> add, ex: sequeantial-key: "saiw)" from: word to: (word)
            -- sa: s -> surround a -> add, ex: sequeantial-key: "saiw(" from: word to: ( word )
            --
            -- delete
            -- sd: s -> surround d -> delete, ex: sequential-key: "sd) or sd(" from: (word) to: word
            -- sd: s -> surround d -> delete, ex: sequential-key: "sd) or sd(" from: ( word ) to: word
            --
            -- replace
            -- sd: s -> surround r -> replace, ex: sequentwal-key: "sr(}" from: (word) to: (word)
            -- sd: s -> surround r -> replace, ex: sequentwal-key: "sd) or sd(" from: ( word ) to: word
        )
    end
}

