<?php
$options_user_online = [
    'order_by' => 'session',
];
$users_online = getAll('users_online', $options_user_online);
$users_online_total = 0;
foreach ($users_online as $user) {
    $date1 = new DateTime($user['dateonline']);
    $date2 = new DateTime();
    $interval = $date1->diff($date2);
    if ($interval->i <= 5) {
        $users_online_total++;
    }
}
?>
