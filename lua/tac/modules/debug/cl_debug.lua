TAC.Debug = true

if not TAC.Debug then
    return
end

TAC.Print(
    PRINT_DEBUG,
    "Debug",
    "Trinity Debug Enabled"
)

concommand.Add("tac_globalize", function()
    _G.TAC = TAC
    
    TAC.Print(
        PRINT_DEBUG,
        "Debug",
        "Object `%s` dumped to globals",
        tostring(_G.TAC)
    )
end)

concommand.Add("tac_dbg_out", function()
    PrintTable(TAC)
end)

function printf(...)
    MsgN(string.format(...))
end