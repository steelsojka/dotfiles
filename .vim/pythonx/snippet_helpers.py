import re

def jsdocArguments(arg_string, snip):
    for arg in arg_string.split(","):
        arg_type = "Object"
        line = [" * @param {"]
        optional_match = re.match("(\w+)\s*=\s*([0-9a-zA-z\{\}\[\]\"']+)", arg.strip())

        if optional_match:
            arg_type = getArgType(optional_match.group(2).strip())
            line.extend([arg_type, "} [", optional_match.group(1).strip(), "=", optional_match.group(2).strip(), "]"])
        else:
            line.extend([arg_type, "} ", arg.strip()])

        line.append(" description")
        snip += "".join(line)

def getArgType(value):
    if re.search("^true|false$", value):
        return "Boolean"
    elif re.search("^\[.*\]$", value):
        return "Array<>"
    elif re.search("^\{.*\}$", value):
        return "Object"
    elif re.search("^[0-9]+$", value):
        return "Number"
    elif re.search("^null$", value):
        return "Null"
    elif re.search("^\"|'.*\"|'", value):
        return "String"
    elif re.search("^\/.*\/$", value):
        return "RegEx"
    else:
        return "Undefined"
