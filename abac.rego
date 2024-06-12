package abac

default allow = false

allow {
    input.user.role == "admin"
}

allow {
    input.user.role == "user"
    input.user.department == "engineering"
    input.action == "read"
    input.resource.type == "document"
}

allow {
    input.user.role == "user"
    input.user.department == "engineering"
    input.action == "write"
    input.resource.type == "code"
}

deny {
    input.user.role == "visitor"
}

# allow {
#     "hello" == "hello"
# }

