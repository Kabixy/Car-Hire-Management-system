<?php

    header("Content-Type: application/json");
    $response = '{
        "ResultCode": 0,
        "ResultDesc": "Confirmation Received Successfully"
    }';

    //RESPONSE FROM MPESA
    $mpesaResponse = file_get_contents('php://input');
    
    //Logging the response
    $logfile = "M_PESAConfirmationResponse.txt";
    $jsonMpesaResponse = json_decode($mpesaResponse, true);

    //writing to file
    $log = fopen($logfile, 'a');
    fwrite($log, $mpesaResponse);
    fclose($log);

?>