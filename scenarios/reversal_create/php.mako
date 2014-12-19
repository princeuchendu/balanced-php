%if mode == 'definition':
Balanced\Credit->reverses->create()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2wIOi20ITgc1u1Lw6UM3y5ZZjZ66M8HMf";

$credit = Balanced\Credit::get("/credits/CR1McWlTSms6PWdGk0HHFdNH");
$credit->reversals->create();

?>
%endif