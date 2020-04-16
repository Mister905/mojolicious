use Mojolicious::Lite;
plugin 'AutoReload';

get '/with_block' => 'block';

app->start;
__DATA__

@@ block.html.ep
% my $link = begin
  % my ($url, $name) = @_;
  Try <%= link_to $url => begin %><%= $name %><% end %>.
% end
<!DOCTYPE html>
<html>
  <head><title>Sebastians frameworks</title></head>
  <body>
    %= $link->('http://mojolicious.org', 'Mojolicious')
    %= $link->('http://catalystframework.org', 'Catalyst')
  </body>
</html>