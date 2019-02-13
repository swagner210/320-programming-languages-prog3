function InfixToPostfix(str)
    
stack = {}    --create a new stack called stack
inputstr = {} 
inputstr = splitsting(str, " ") --tokenize by space
len= string.len(str)
finalstring = {}



    for i=1, #inputstr do

 
        if (isoperator(inputstr[i])) then
            while ((#stack~=0) and (hashigherpres(stack[#stack],inputstr[i]))) do     
                table.insert(finalstring,stack[#stack])     --PUT Stack.TOP() into finalstring 
                table.remove(stack,#stack)   
                
            end
            table.insert(stack,inputstr[i])                     --stack.push(inputstr[i])
        else
            table.insert(finalstring,inputstr[i])                   --put onto finalstring is an operand
        end
    end

    while(#stack~=0) do
        table.insert(finalstring,stack[#stack])
        table.remove(stack,#stack)   
    end

print("Assignment #3-2, Samantha Wagner, swagner210@yahoo.com")
output= table.concat(finalstring," ")
return output


end
----------------------------------------------------------------------------------------------------------------

function splitsting(string, delim)
    
    local t = {}
     i=1
    for str in string.gmatch(string, "([^"..delim.."]+)") do
        table.insert(t,str)
    end
    return t
end

----------------------------------------------------------------------------------------------

function isoperator(x)
    if (x == "+") or (x == "-") or (x == "*") or (x == "/") then
        return true
    end
    return false
end
--------------------------------------------------------------------------------------------------------------


function pres(z)

   local priority

    if (z == "+") or (z == "-") then
        priority=1
        return priority
    elseif (z == "*") or (z == "/") then
        priority=2
        return priority
    end
end

-------------------------------------------------------------------------------------------------------

function hashigherpres(a,b)

     p1=pres(a)
     p2=pres(b)
    if (p1==p2) then
        return true
    end
    if(p1 > p2) then
        return true
    else
        return false
    end    
end
