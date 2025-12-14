# Bindir Files

I love the way that my scripts are readily available to be used in the bin folder of a repository, and can be used. However, it's not clear how to use files that are not scripts. Or include them for use with other scripts by referencing their location dynamically.

For example, when a pipeline is kicked off, typically you see something like this: Uploading local `bin` scripts folder to s3://my-bucket/tmp/50/ab3ae02dbe96938ba36d7ac7def78f/bin

Does this portion exist as an accessible variable: s3://my-bucket/tmp/50/ab3ae02dbe96938ba36d7ac7def78f/? So binDir="s3://my-bucket/tmp/50/ab3ae02dbe96938ba36d7ac7def78f/"

In the attached workflow, the "hello" script works perfectly, but "goodbye" does not!

Also, even though the tasks can find the celebrate.py script, the "chrismas.json" configuration file (in the same bin directory) cannot be found!?

Can you fix my workflow?