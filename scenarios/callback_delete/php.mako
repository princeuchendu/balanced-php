%if mode == 'definition':
Balanced\Callback->unstore()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2wIOi20ITgc1u1Lw6UM3y5ZZjZ66M8HMf";

$callback = \Balanced\Callback::get("/callbacks/CB52j36ilEVeALiL9ABZ0Jl6");
$callback->unstore();

?>
%endif