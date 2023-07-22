<?php 
    // include '../connectdb.php';
    // header("Content-Type: application/json");
    // $response = '{
    //     "ResultCode": 0,
    //     "ResultDesc": "Confirmation Received Successfully"
    // }';

    // $callbackJSONData = file_get_contents('php://input');

    // $logFile = "M_PESAResponse.txt";
    // $log = fopen($logFile, "a");
    // fwrite($log, $callbackJSONData);
    // fclose($log);

    // $callbackData=json_decode($callbackJSONData);
    // echo $callbackData;
    // $resultCode = $callbackData->Body->stkCallback->ResultCode;
    // $resultDesc = $callbackData->Body->stkCallback->ResultDesc;
    // $merchantRequestID = $callbackData->Body->stkCallback->MerchantRequestID;
    // $checkoutRequestID = $callbackData->Body->stkCallback->CheckoutRequestID;
    // $pesa = $callbackData->stkCallback->Body->CallbackMetadata->Item[0]->Name;
    // $amount = $callbackData->Body->stkCallback->CallbackMetadata->Item[0]->Value;
    // $mpesaReceiptNumber = $callbackData->Body->stkCallback->CallbackMetadata->Item[1]->Value;
    // $balance = $callbackData->stkCallback->Body->CallbackMetadata->Item[2]->Value;
    // $c2BUtilityAccountAvailableFunds = $callbackData->Body->stkCallback->CallbackMetadata->Item[3]->Value;
    // $transactionDate = $callbackData->Body->stkCallback->CallbackMetadata->Item[3]->Value;
    // $phoneNumber - $callbackData->Body->stkCallback->CallbackMetadata->Item[4]->Value;

    // $amount = strval($amount);

?>