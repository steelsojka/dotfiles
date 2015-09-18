def jsdocArguments(arg_string, snip):
    for arg in arg_string.split(","):
            snip += " * @param {1} {0} description".format(arg.strip(), "{Object}")
