<?php

use JetBrains\PhpStorm\NoReturn;

function show404NotFound(): void
{
    header('HTTP/1.1 404 Not Found', true, 404);
    require('404.php');
    exit();
}

/**
 * Thoát các ký tự đặc biệt trong chuỗi
 *
 * @param  string  $str
 *
 * @return string
 */
function escape(string $str): string
{
    global $linkConnectDB;
    return mysqli_real_escape_string($linkConnectDB, $str);
}

/**
 * @param  string  $url
 * @param $page
 * @param $total
 *
 * @return string
 */
function pagination(string $url, $page, $total): string
{
    $adjacent = 2;
    $out = '<ul class="pagination pull-right">';

    //first
    if ($page == 1) {
        $out .= '<li class="disabled"><span>Đầu</span></li>';
    } else {
        $out .= '<li><a href="' . $url . '">Đầu</a></li>';
    }

    // previous
    if ($page == 1) {
        $out .= '<li class="disabled"><span><i class="fa fa-chevron-left"></i></span></li>';
    } elseif ($page == 2) {
        $out .= '<li><a href="' . $url . '"><i class="fa fa-chevron-left"></i></a></li>';
    } else {
        $out .= '<li><a href="' . $url . '&amp;page=' . ($page - 1) . '"><i class="fa fa-chevron-left"></i></a></li>';
    }
    $min = ($page > $adjacent) ? ($page - $adjacent) : 1;
    $max = ($page < ($total - $adjacent)) ? ($page + $adjacent) : $total;
    for ($i = $min; $i <= $max; $i++) {
        if ($i == $page) {
            $out .= '<li class="active"><span>' . $i . '</span></li>';
        } elseif ($i == 1) {
            $out .= '<li><a href="' . $url . '">' . $i . '</a></li>';
        } else {
            $out .= '<li><a href="' . $url . "&amp;page=" . $i . '">' . $i . '</a></li>';
        }
    }

    // next
    if ($page < $total) {
        $out .= '<li><a href="' . $url . '&amp;page=' . ($page + 1) . '"><i class="fa fa-chevron-right"></i></a></li>';
    } else {
        $out .= '<li class="disabled"><span><i class="fa fa-chevron-right"></i></span></li>';
    }

    //last
    if ($page < $total) {
        $out .= '<li><a href="' . $url . '&amp;page=' . $total . '">Cuối</a></li>';
    } else {
        $out .= '<li class="disabled"><span>Cuối</span></li>';
    }

    $out .= '</ul>';
    return $out;
}

/**
 * Change string to slug format
 *
 * @param $str
 *
 * @return array|string|string[]|null
 */
function convert_name($text, string $divider = '-'): array|string|null
{
    // replace non letter or digits by divider
    $text = preg_replace('~[^\pL\d]+~u', $divider, $text);

    // transliterate
    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

    // remove unwanted characters
    $text = preg_replace('~[^-\w]+~', '', $text);

    // trim
    $text = trim($text, $divider);

    // remove duplicate divider
    $text = preg_replace('~-+~', $divider, $text);

    // lowercase
    $text = strtolower($text);

    if (empty($text)) {
        return 'n-a';
    }

    return $text;
}

/**
 * @param $str
 *
 * @return array|string|string[]
 */
function slug($str): array|string
{
    return convert_name($str);
}

//only admin
function upload($field, $config = [])
{
    $options = array(
        'name' => '',
        'upload_path'  => './',
        'allowed_exts' => '*',
        'overwrite'    => TRUE,
        'max_size'     => 0
    );
    $options = array_merge($options, $config); //Hợp nhất một hoặc nhiều mảng
    if (!isset($_FILES[$field])) return FALSE;
    $file = $_FILES[$field];
    if ($file['error'] != 0) return FALSE;
    $temp = explode(".", $file["name"]);
    $ext = end($temp); //Đặt con trỏ bên trong của một mảng thành phần tử cuối cùng của nó
    if ($options['allowed_exts'] != '*') {
        $allowedExts = explode('|', $options['allowed_exts']);
        if (!in_array($ext, $allowedExts)) return FALSE;
    }
    $size = $file['size'] / 1024 / 1024;
    if (($options['max_size'] > 0) && ($size > $options['max_size'])) return FALSE;

    $name = empty($options['name']) ? $file["name"] : $options['name'] . '.' . $ext;
    $file_path = $_SERVER['DOCUMENT_ROOT'] . '/' . $options['upload_path'] . $name;
    if ($options['overwrite'] && file_exists($file_path)) {
        unlink($file_path);
    }

    move_uploaded_file($file["tmp_name"], $file_path);
    return $name;
}

/**
 * @return void
 */
function permission_user(): void
{
    global $userNav;
    $userLogin = getRecord('users', $userNav);
    if ($userLogin['role_id'] == 0) {
        header('location:index.php');
        exit;
    }
}

/**
 * @return void
 */
function permission_moderator(): void
{
    global $userNav;
    $userLogin = getRecord('users', $userNav);
    if ($userLogin['role_id'] == 2) {
        header('location:admin.php');
        exit;
    }
}

/**
 * Pagination for admin
 *
 * @param  string  $url
 * @param $page
 * @param $total
 *
 * @return string
 */
function adminPagination(string $url, $page, $total): string
{
    $adjacent = 2;
    $out = '<ul class="pagination pagination-primary mt-4">';

    //first
    if ($page == 1) {
        $out .= '<li class="page-item disabled"><span class="page-link">Đầu</span></li>';
    } else {
        $out .= '<li class="page-item"><a style="color: blueviolet" class="page-link" href="' . $url . '">Đầu</a></li>';
    }

    // previous
    if ($page == 1) {
        $out .= '<li class="page-item disabled"><span class="page-link"><i class="zmdi zmdi-arrow-left"></i></span></li>';
    } elseif ($page == 2) {
        $out .= '<li class="page-item"><a class="page-link" href="' . $url . '"><i class="zmdi zmdi-arrow-left"></i></a></li>';
    } else {
        $out .= '<li class="page-item"><a class="page-link" href="' . $url . '&amp;page=' . ($page - 1) . '"><i class="zmdi zmdi-arrow-left"></i></a></li>';
    }
    $min = ($page > $adjacent) ? ($page - $adjacent) : 1;
    $max = ($page < ($total - $adjacent)) ? ($page + $adjacent) : $total;
    for ($i = $min; $i <= $max; $i++) {
        if ($i == $page) {
            $out .= '<li class="page-item active"><span class="page-link">' . $i . '</span></li>';
        } elseif ($i == 1) {
            $out .= '<li class="page-item"><a class="page-link" href="' . $url . '">' . $i . '</a></li>';
        } else {
            $out .= '<li class="page-item"><a class="page-link" href="' . $url . "&amp;page=" . $i . '">' . $i . '</a></li>';
        }
    }

    // next
    if ($page < $total) {
        $out .= '<li class="page-item"><a class="page-link" href="' . $url . '&amp;page=' . ($page + 1) . '"><i class="zmdi zmdi-arrow-right"></i></a></li>';
    } else {
        $out .= '<li class="page-item disabled"><span class="page-link"><i class="zmdi zmdi-arrow-right"></i></span></li>';
    }

    //last
    if ($page < $total) {
        $out .= '<li class="page-item"><a style="color: blueviolet" class="page-link" href="' . $url . '&amp;page=' . $total . '">Cuối</a></li>';
    } else {
        $out .= '<li class="page-item disabled"><span class="page-link">Cuối</span></li>';
    }
    $out .= '</ul>';
    return $out;
}

/**
 * @return void
 */
#[NoReturn] function dd(): void
{
    echo '<pre>';
    foreach (func_get_args() as $arg) {
        var_dump($arg);
    }
    die;
}
