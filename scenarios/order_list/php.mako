%if mode == 'definition':
Balanced\Marketplace::mine()->orders

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-1xLFE6RLC1W3P4ePiQDI4UVpRwtKcdfqL";

$marketplace = Balanced\Marketplace::mine();
$orders = $marketplace->orders->query()->all();

?>
%endif