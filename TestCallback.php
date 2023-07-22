<?php

try{
    $pdo =new PDO('mysql:host=localhost;dbname=pos_db','root','');
// echo'Connection Successfull';
    
}catch(PDOException $f){
    
    echo $f->getmessage();
}

try{
    header("Content-Type: application/json");
    $response = '{
        "ResultCode": 0,
        "ResultDesc": "Confirmation Received Successfully"
    }';

    //RESPONSE FROM MPESA
    $mpesaResponse = file_get_contents('php://input');
    
    //Logging the response
    $logfile = "M_PESAResponse.txt";
    $jsonMpesaResponse = json_decode($mpesaResponse, true);

    //writing to file
    $log = fopen($logfile, 'a');
    fwrite($log, $mpesaResponse);
    fclose($log);

    $mpesa = json_decode($mpesaResponse);
    if($mpesa !=null) {
    $resultCode = $mpesa->Body->stkCallback->ResultCode;
    $resultDesc = $mpesa->Body->stkCallback->ResultDesc;
    $merchantRequestID = $mpesa->Body->stkCallback->MerchantRequestID;
    $checkoutRequestID = $mpesa->Body->stkCallback->CheckoutRequestID;
    $amount = $mpesa->Body->stkCallback->CallbackMetadata->Item[0]->Value;
    $mpesaReceiptNumber = $mpesa->Body->stkCallback->CallbackMetadata->Item[1]->Value;
    $balance = $mpesa->Body->stkCallback->CallbackMetadata->Item[2]->Value;
    $transactionDate = $mpesa->Body->stkCallback->CallbackMetadata->Item[3]->Value;
    $phoneNumber = $mpesa->Body->stkCallback->CallbackMetadata->Item[4]->Value;

    $transtype = 'C2B';

     $c2b = $pdo->prepare("insert into tbl_c2b_transactions(TransactionType,TransID,TransTime,TransAmount,MSISDN,ResultCode)values(:TransactionType,:TransID,:TransTime,:TransAmount,:MSISDN,:ResultCode)");
     $c2b->bindParam(':TransactionType', $transtype);
     $c2b->bindParam(':TransID', $mpesaReceiptNumber);
     $c2b->bindParam(':TransTime', $transactionDate);
     $c2b->bindParam(':TransAmount', $amount);
     $c2b->bindParam(':MSISDN', $phoneNumber);
     $c2b->bindParam(':ResultCode', $resultCode);
     if($mpesa !=null) {
        $c2b->execute();
     }
    }
    else {
        echo "<script>window.location = '../createorder.php'</script>";
        echo '<script type="text/javascript">
              jQuery(function validation(){
                  swal({
                    title: "Error Makin payment!",
                    text: "Order added but payment not paid",
                    icon: "error",
                    button: "OK",
                  });
              });
            </script>';
    }
} catch (\Throwable $th) {
    echo $th->getMessage();
}

