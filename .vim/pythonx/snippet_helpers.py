def jsdocArguments(arg_string):
    result = []
    arguments = arg_string.split(",")

    result = [" * @param {1} {0} description".format(arg.strip(), "{Object}") for arg in arguments]
    return "\n".join(result)
