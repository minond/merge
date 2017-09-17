[![Build Status](https://travis-ci.org/minond/merge.svg?branch=master)](https://travis-ci.org/minond/merge)

String and file merge tool for bash. Source files include a `merge` and a
`render` function. They both work in similar ways, except `render` wants a file
path. For both functions just pass the merge fields as long parameters, like
this: `merge "Hi {{name}}" --name=Marcos` which resunts in "Hi Marcos" being
returned. Some more examples:


```bash
merge "hi {{name}}" --name=Marcos # "hi Marcos"
merge "hi {{name}} {{name}}" --name=Marcos # "hi Marcos Marcos"
merge "hi {{fname}} {{lname}}" --fname=Marcos --lname=Minond # "hi Marcos Minond"
render test/sample.html --name=Marcos # "<h1>Welcome, Marcos!</h1>"
```
