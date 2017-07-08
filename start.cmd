@echo off
TITLE PocketMine-MP server software for Minecraft: Pocket Edition
cd /d %~dp0

if exist bin\php\php.app (
        set PHPRC=""
        set PHP_BINARY=bin\php\php.app
) else (
        set PHP_BINARY=php

)

if exist PocketMine-MP.app
        set POCKETMINE_FILE=PocketMine-MP.app

) else (
        if exist src/pocketmine/Pocketmine.php (
                set POCKETMINE_FILE=src/pocketmine/PocketMine.php
        ) else ( 
                echo "Couldn't find a valid PocketMine-MP instalation
