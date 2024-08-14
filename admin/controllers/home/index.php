<?php

$user = $_SESSION['user'];
global $userNav;

require_once('admin/controllers/shared/statistics.php');

$title = 'Quản trị hệ thống - Blue Electronics';
$homeNav = 'class="active open"';

require('admin/views/home/index.php');
