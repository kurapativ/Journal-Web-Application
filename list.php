<?php
$filelist = array();
if ($handle = opendir(".")) {
    while ($entry = readdir($handle)) {
        if (strpos($entry, "te") === 0) {
            $filelist[] = $entry;
        }
    }
    closedir($handle);
}