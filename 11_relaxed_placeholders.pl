use Mojolicious::Lite;
plugin 'AutoReload';

# Relaxed placeholders allow matching of everything until a / occurs, similar to the regular expression ([^/]+)
# /hello/test
# /hello/test.html
get '/hello/#you' => 'groovy';

app->start;
__DATA__

@@ groovy.html.ep
Your name is <%= $you %>.