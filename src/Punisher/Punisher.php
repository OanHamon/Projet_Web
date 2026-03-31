<?php

namespace App\Punisher;
use DateTime;

class Punisher {

    function punish($msg) {
        return "PUNISHED : $msg";
    }

    function isEmail($data){
        if(!filter_var($data, FILTER_VALIDATE_EMAIL)){
            return "PUNISHED : Email not valid";
        }
        return true;
    }
    
    function isInt($data){
        if(!is_numeric($data)){
            return "PUNISHED : Not a number";
        }
        return true;
    }


    function isPositive($data) {
        if ($data < 1) {
            return "PUNISHED : Data negative";
        }
        return true;
    }

    function isPhoneNumber($data){
        if(!preg_match('/^0[0-9]{9}$/',$data)){
            return "PUNISHED : Phone not valide";
        }
        return true;
    }

    function isDateAfterToday($data){
        date_default_timezone_set('UTC');
        $today = new DateTime('today');
        $date = new DateTime($data);
        if(!($date > $today)){
            return "PUNISHED : Date in the past not valide";
        }
        return true;
    }

    function isDateRangeValid($start, $end){
        $start = new DateTime($start);
        $end = new DateTime($end);
        if($end < $start){
            return "PUNISHED : The start date is after the end date";
        }
        return true;
    }

    function sanitize($data){
        $data = trim($data);
        $data = strip_tags($data);
        return $data;
    }
}