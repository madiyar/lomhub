<?php
  $isDark = explode("/", $_SERVER["REQUEST_URI"])[1] == "shop" ? true : false;
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$r["title"]?></title>
    <link rel="stylesheet" href="/src/css/all.min.css">
    <link rel="stylesheet" href="/src/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/src/css/theme.css">
    <script src="https://ulogin.ru/js/ulogin.js"></script>
    <script type="text/javascript" src="https://vk.com/js/api/openapi.js?169"></script>
    <script type="text/javascript">
      VK.init({apiId: 8163827, onlyWidgets: true});
    </script>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-<?=$isDark ? "dark" : "light"?>">
      <a class="navbar-brand" href="/"><img src="/src/img/logo<?=$isDark ? "_dark" : ""?>.png" width="100" /></a>
      <form action="/load/search/?q=samsung&cat=1" class="searchbar rounded-pill shadow-sm px-2 mx-3">
        <input type="search" name="q" placeholder="Что ищете?" value="<?=$_GET["q"]?>">
        <select name="cat">
          <option value="0" selected>Все категории</option>
          <?php foreach ($r["cat"] as $cat): ?>
            <option value="<?=$cat["id"]?>"><?=$cat["name"]?></option>
          <?php endforeach; ?>
        </select>
        <button type="submit" class="btn"><i class="fa fa-search"></i></button>
      </form>
      <div class="dropdown">
        <a href="#" class="btn btn-light" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right">
          <?php if(isset($_SESSION["user"])) : ?>
            <a class="dropdown-item" href="/user/bookmark">Моя страница</a>
            <?php if($_SESSION["user"]["type"] == 1) : ?>
              <a class="dropdown-item" href="/user/admin">Админ Панель</a>
            <?php endif; ?>
            <?php if($_SESSION["user"]["type"] == 2) : ?>
              <a class="dropdown-item" href="/shop/lombard/">Админ Панель</a>
            <?php endif; ?>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/user/sign_out">Выйти</a>
          <?php else : ?>
            <div id="uLogin_07b94bd3" data-uloginid="07b94bd3"></div>
          <?php endif; ?>
        </div>
      </div>
    </nav>
    <div class="container-fluid">
