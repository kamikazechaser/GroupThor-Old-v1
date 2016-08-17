local function action(msg, blocks, ln)
    
    local questions = {
        'How different is this from GroupButler',
    }
    
    local answer = {
        'Anti-Telegram Links Specific And Silent Commands Among Others. It Also Reduces The Load Burden On GroupButler Which Supports Over 6000 Groups',
    }
    
    local text
    
    if not blocks[2] then
        local i = 1
        text = '*All the available questions*. Type `/faq [question number]`  to get the anwer\n\n'
        for k,v in pairs(questions) do
            text = text..'*'..i..'* - `'..v..'`\n'
            i = i + 1
        end
        api.sendMessage(msg.from.id, text, true)
    end
    if blocks[2] then
        local n = tonumber(blocks[2])
        if n > #answer or n == 0 then
            api.sendMessage(msg.from.id, '_Number not valid_', true)
        else
            text = '*'..questions[n]..'*\n\n'..answer[n]
            api.sendMessage(msg.from.id, text, true)
        end
    end
    mystat('!faq')
end
    
return {
    action = action,
    triggers = {
        '^!(faq)$',
        '^!(faq) (%d%d?)',
    }
}