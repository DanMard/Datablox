local baseProtocol = "roblox://experiences/start?"

function prompt(msg)
    io.write(msg .. ": ")
    return io.read()
end

print([[
 /$$$$$$$              /$$               /$$       /$$                    
| $$__  $$            | $$              | $$      | $$                    
| $$  \ $$  /$$$$$$  /$$$$$$    /$$$$$$ | $$$$$$$ | $$  /$$$$$$  /$$   /$$
| $$  | $$ |____  $$|_  $$_/   |____  $$| $$__  $$| $$ /$$__  $$|  $$ /$$/
| $$  | $$  /$$$$$$$  | $$      /$$$$$$$| $$  \ $$| $$| $$  \ $$ \  $$$$/ 
| $$  | $$ /$$__  $$  | $$ /$$ /$$__  $$| $$  | $$| $$| $$  | $$  >$$  $$ 
| $$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$$| $$$$$$$/| $$|  $$$$$$/ /$$/\  $$
|_______/  \_______/   \___/   \_______/|_______/ |__/ \______/ |__/  \__/
]])
print("Datablox Place Joiner")

while true do
    local url = baseProtocol
    local mode = string.upper(prompt("Enter a Mode (Place, or Q to quit)"))

    if mode == "QUIT" then
        print("Exiting Datablox...")
        break
    end

    if mode == "PLACE" then
        local pid = prompt("Please Input a Place ID")
        local jid = prompt("Please Input a Job ID (optional)")
        local privid = prompt("Please Input a Private Server ID (optional)")

        if tonumber(pid) then
            url = url .. "placeId=" .. pid
            if tonumber(jid) then
                url = url .. "&gameInstanceId=" .. jid
            end
            if tonumber(privid) then
                url = url .. "&linkCode=" .. privid
            end

            os.execute('cmd /c start "" "' .. url .. '"')
        else
            print("Invalid Place ID! Try again.")
        end

    else
        print("Invalid mode! Type 'Place', or 'Q' to quit.")
    end
    
    os.execute("cls")
    print([[
/$$$$$$$              /$$               /$$       /$$                    
| $$__  $$            | $$              | $$      | $$                    
| $$  \ $$  /$$$$$$  /$$$$$$    /$$$$$$ | $$$$$$$ | $$  /$$$$$$  /$$   /$$
| $$  | $$ |____  $$|_  $$_/   |____  $$| $$__  $$| $$ /$$__  $$|  $$ /$$/
| $$  | $$  /$$$$$$$  | $$      /$$$$$$$| $$  \ $$| $$| $$  \ $$ \  $$$$/ 
| $$  | $$ /$$__  $$  | $$ /$$ /$$__  $$| $$  | $$| $$| $$  | $$  >$$  $$ 
| $$$$$$$/|  $$$$$$$  |  $$$$/|  $$$$$$$| $$$$$$$/| $$|  $$$$$$/ /$$/\  $$
|_______/  \_______/   \___/   \_______/|_______/ |__/ \______/ |__/  \__/
    ]])
    print("Datablox Place Joiner")
    print("\n--- Ready for next join ---\n")
end