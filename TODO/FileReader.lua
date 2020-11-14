
function ReadFile(FilePath)
    FilePath = SKIN:MakePathAbsolute(FilePath)

    local File = io.open(FilePath)

    if not File then
        local err = 'ReadFile: error opening file ' .. FilePath
        print(err)
        return err
    end

    local Contents = File:read('*all')
    File:close()

    return Contents
end

function Update()
    return ReadFile(SELF:GetOption('File'))
end
