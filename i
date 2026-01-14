-- INTERCEPTOR COM CHAVE VÁLIDA
-- Execute isso quando tiver uma chave válida funcionando

local original_loadstring = loadstring

loadstring = function(code, ...)
    print("\n" .. string.rep("=", 80))
    print("CÓDIGO INTERCEPTADO!")
    print(string.rep("=", 80))
    print("Tamanho:", #code, "bytes")
    print("\nCódigo:")
    print(string.rep("-", 80))
    print(code)
    print(string.rep("-", 80))
    
    if writefile then
        local filename = "intercepted_" .. os.time() .. ".lua"
        writefile(filename, code)
        print("\nSalvo em:", filename)
    end
    
    return original_loadstring(code, ...)
end

-- Agora execute o loader normalmente com uma chave VÁLIDA
script_key = "SUA_CHAVE_VALIDA_AQUI"
loadstring(game:HttpGet("https://vsrxrppmdiozfyjwwmtg.supabase.co/functions/v1/loader/c7ab9d4c-44a7-4208-a900-705eeb5997d2"))()
