use Mojolicious::Lite;
plugin 'AutoReload';

# All placeholders require a value, but by assigning them default values you can make capturing optional.
# /hello
# /hello/Sara
get '/hello/:name' => {name => 'Sebastian', day => 'Monday'} => sub {
  my $c = shift;
  $c->render(template => 'groovy', format => 'txt');
};

app->start;
__DATA__

@@ groovy.txt.ep
My name is <%= $name %> and it is <%= $day %>.