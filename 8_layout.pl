use Mojolicious::Lite;
plugin 'AutoReload';
get '/with_layout';

app->start;
__DATA__

@@ with_layout.html.ep

% title 'Green';
% layout 'green';
Hello Green Template! Huh?

@@ layouts/green.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>