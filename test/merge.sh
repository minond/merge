source merge
source render

expect "merges a single field once" \
    $(test "$(merge "hi {{name}}" --name=Marcos)" = "hi Marcos")

expect "merges a single field multiple times" \
    $(test "$(merge "hi {{name}} {{name}}" --name=Marcos)" = "hi Marcos Marcos")

expect "merges multiple files" \
    $(test "$(merge "hi {{fname}} {{lname}}" --fname=Marcos --lname=Minond)" = "hi Marcos Minond")
