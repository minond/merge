source merge
source render

expect "retrieve a file and merges it" \
    $(test "$(render test/sample.html --name=Marcos)" = "<h1>Welcome, Marcos!</h1>")
