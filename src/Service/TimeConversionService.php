<?php

namespace App\Service;

class TimeConversionService
{
    public function convertMinutesToHours(int $minutes): string
    {
        if ($minutes < 60) {
            return $minutes . "min";
        } else {
            $hours = floor($minutes / 60);
            $remainingMinutes = $minutes % 60;
            if ($remainingMinutes == 0) {
                return $hours . "h";
            } else {
                return $hours . "h " . $remainingMinutes . "min";
            }
        }
    }
}
