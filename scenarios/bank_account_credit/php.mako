%if mode == 'definition':
Balanced\BankAccount->credits->create()

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-1xLFE6RLC1W3P4ePiQDI4UVpRwtKcdfqL";

$bank_account = Balanced\BankAccount::get("/bank_accounts/BA6g0aWJb8TNd7sXXs17t0Q0");
$bank_account->credits->create(array(
    "amount" => "5000",
));

?>
%endif