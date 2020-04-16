use Mojolicious::Lite;
plugin 'AutoReload';

# Render the template "index.html.ep"
get '/' => sub {
  my $c = shift;
  $c->render;
} => 'index';

# Render the template "hello.html.ep"
get '/hello';

app->start;
__DATA__

@@ index.html.ep
<%= link_to Hello  => 'hello' %>.
<%= link_to Reload => 'index' %>.

@@ hello.html.ep
<%= link_to Index => 'index' %>.
<br>
Hello World!