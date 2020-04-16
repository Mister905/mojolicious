use Mojolicious::Lite;
plugin 'AutoReload';

# Route leading to an action that renders a template
# The "stash" in Mojolicious::Controller is used to pass data to templates
# stash values like template, text and data are reserved and will be used by 
# "render" in Mojolicious::Controller to decide how a response should be generated
get '/foo' => sub {
  my $c = shift;
  $c->stash(one => 23);
  $c->render(template => 'magic', two => 24);
};

app->start;
__DATA__

@@ magic.html.ep
The magic numbers are <%= $one %> and <%= $two %>.