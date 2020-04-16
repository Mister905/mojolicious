use Mojolicious::Lite;
plugin 'AutoReload';

# Wildcard placeholders allow matching absolutely everything, including / and ., similar to the regular expression (.+).
# /hello/test
# /hello/test123
# /hello/test.123/test/123
get '/hello/*you' => 'groovy';

app->start;
__DATA__

@@ groovy.html.ep
Your name is <%= $you %>.